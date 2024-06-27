<?php

namespace App\Http\Controllers;

use App\Exceptions\InvalidAuthData;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\SignUpRequest;
use App\Models\Auth as ModelsAuth;
use App\Models\Avatar;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(LoginRequest $r) {
        $credentials = request(['nickname', 'password']);

        if (!Auth::attempt($credentials) || !$user = (Auth::user()))
            throw new InvalidAuthData();
        
        User::CheckAvailable($user);

        return response([
            'token' => User::newToken($user)
        ]);
    }

    public function signup(SignUpRequest $r) {
        $credentials = $r->all();

        if (!array_key_exists('avatar_id', $credentials))
            $credentials['avatar_id'] = Avatar::first()->id;

        $user  = User::create([
            ...$credentials,
            'role_id' => Role::getUserRoleId()
        ]);
        $token = User::newToken($user );

        return response([
            'token' => $token
        ], 201);
    }

    public function logout(Request $r) {
        $token = $r->bearerToken();
        ModelsAuth::where('token', '=', $token)->delete();
        return response(null, 204);
    }
}
