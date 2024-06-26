<?php

namespace App\Http\Controllers;

use App\Exceptions\InvalidAuthData;
use App\Http\Requests\LoginRequest;
use App\Models\User;
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
}
