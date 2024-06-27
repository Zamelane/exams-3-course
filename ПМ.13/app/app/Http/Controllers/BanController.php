<?php

namespace App\Http\Controllers;

use App\Exceptions\ApiException;
use App\Http\Requests\BanUserRequest;
use App\Models\Ban;
use App\Models\User;
use Illuminate\Support\Facades\Request;

class BanController extends Controller
{
    public function ban(BanUserRequest $r, $user_id) {
        if (!$user = User::find($user_id))
            throw new ApiException(404, 'User not found');

        if ($banId = User::getBanId($user))
            throw new ApiException(401, [
                'message' => 'The user has already been banned',
                'active_ban_id' => $banId
            ]);

        return response([
            'ban_id' => (Ban::create([
                ...request()->all(),
                'date_start' => now(),
                'user_id' => $user->id
                ]))->id
        ], 200);
    }

    public function unban(Request $r, $user_id) {
        if (!$user = User::find($user_id))
            throw new ApiException(404, 'User not found');

        if (!$banId = User::getBanId($user))
            throw new ApiException(401, 'This user is not banned');

        Ban::where('id', '=', $banId)->delete();

        return response(null, 204);
    }
}
