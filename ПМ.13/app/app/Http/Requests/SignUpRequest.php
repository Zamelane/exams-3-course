<?php

namespace App\Http\Requests;

class SignUpRequest extends ApiRequest
{
    public function rules(): array
    {
        return [
            'nickname'  => 'required|string|min:3|max:25|unique:users,nickname',
            'email'     => 'required|string|min:3|max:65|unique:users,email|email:rfc,dns',
            'password'  => 'required|string|min:3|max:75',
            'avatar_id' => 'integer|unique:avatars'
        ];
    }
}
