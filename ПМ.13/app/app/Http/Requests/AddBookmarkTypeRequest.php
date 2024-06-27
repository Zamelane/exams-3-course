<?php

namespace App\Http\Requests;

class AddBookmarkTypeRequest extends ApiRequest
{
    public function rules(): array
    {
        return [
            'name' => 'required|string|min:5'
        ];
    }
}
