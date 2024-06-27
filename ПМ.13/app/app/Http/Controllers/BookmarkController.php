<?php

namespace App\Http\Controllers;

use App\Exceptions\ApiException;
use App\Http\Requests\AddBookmarkTypeRequest;
use App\Http\Requests\SetBookmarkRequest;
use App\Http\Resources\BookmarksUserResource;
use App\Models\Comic;
use App\Models\Comic_reading_status;
use App\Models\Reading_status;
use Illuminate\Http\Request;

class BookmarkController extends Controller
{
    private function checkComicAndGenerateData(Request $r, $comic_id) {
        if (!$comic = Comic::find($comic_id))
            throw new ApiException(404, 'Comic not found');

        $user = $r->user();
        return [
            'comic_id' => $comic_id,
            'user_id' => $user->id
        ];
    }
    public function setBookmark(SetBookmarkRequest $r, int $comic_id) {
        $data = [
            ...$this->checkComicAndGenerateData($r, $comic_id),
            'reading_status_id' => Reading_status::where('name', '=', request('type'))->first()->id
        ];

        if (Comic_reading_status::where($data)->first())
            return response('The status has already been set', 200);
        
        Comic_reading_status::create($data);

        return response(null, 201);
    }

    public function removeBookmark(Request $r, int $comic_id) {
        $data = $this->checkComicAndGenerateData($r, $comic_id);
        
        if (!$status = Comic_reading_status::where($data)->first())
            return response('The status has already been removed', 404);

        $status->delete();
        
        return response(null, 204);
    }

    public function listTypes() {
        $types = Reading_status::all();

        return response($types, 200);
    }

    public function userBookmarks(Request $r) {
        return response(
            BookmarksUserResource::collection(Comic_reading_status::where(
                'user_id', '=', $r->user()->id
            )->simplePaginate()),
            200
        );
    }

    public function add(AddBookmarkTypeRequest $r)
    {
        $type_name = request('name');
        if ($type = Reading_status::where('name', '=', $type_name)->first())
            throw new ApiException(401, "The \"{$type_name}\" type already exists");
        
        return response(Reading_status::create(request()->all()), 201);
    }

    public function remove(Request $r, $id) {
        if (!$type_db = Reading_status::find($id))
            throw new ApiException(404, "Type with index {$id} not found");

        $type_db->delete();

        return response(null, 204);
    }
}
