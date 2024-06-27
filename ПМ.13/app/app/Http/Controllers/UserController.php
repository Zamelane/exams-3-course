<?php

namespace App\Http\Controllers;

use App\Exceptions\ApiException;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function list() {
        return response(UserResource::collection(User::simplePaginate()), 200);
    }

    public function show(Request $r, $id) {
        if (!$user = User::find($id))
            throw new ApiException(404, 'User not found');

        return response(new UserResource($user), 200);
    }

    public function me(Request $r) {
        return $this->show($r, $r->user()->id);
    }
}
