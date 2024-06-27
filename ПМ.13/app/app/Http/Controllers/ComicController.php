<?php

namespace App\Http\Controllers;

use App\Exceptions\ApiException;
use App\Http\Requests\ComicsFiltersRequest;
use App\Http\Resources\ComicResource;
use App\Models\Comic;
use App\Models\Comic_genre;
use App\Models\Comic_type;
use Illuminate\Http\Request;

class ComicController extends Controller
{
    // Просмотр конкретного
    public function show(Request $r, $id) {
        if (!$comic = Comic::find($id))
            throw new ApiException(404, 'Comic not found');

        return response(new ComicResource($comic), 200);
    }

    // Просмотр всех с фильтрами
    public function list(ComicsFiltersRequest $r) {
        $query = Comic::select('comics.*');
        $genres = request('genres');
        if ($genres)
        {
            $genres = explode(',', $genres, Comic_genre::count());
            $query->join('comic_genres', 'comic_genres.comic_id', '=', 'comic_id')
                  ->join('genres', 'genres.id', '=', 'comic_genres.genre_id')
                  ->whereIn('name', $genres);
        }

        if ($comic_type = request('comic_type'))
            if ($comic_type_db = Comic_type::where('name', '=', $comic_type)->first())
                $query->where('comic_type_id', '=', $comic_type_db->id);

        $query->groupBy('comics.id')
              ->orderBy('comics.id');

        return response(ComicResource::collection($query->simplePaginate()), 200);
    }
}
