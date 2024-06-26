<?php

namespace App\Http\Requests;

class LoginRequest extends ApiRequest
{
    public function rules(): array
    {
        return [
            'nickname' => 'required|string|min:2|max:32',
            'password' => 'required|string|min:2|max:255'
        ];
    }
}
