<?php

namespace App\Http\Requests;

class ComicsFiltersRequest extends ApiRequest
{
    public function rules(): array
    {
        return [
            'genres' => 'string|min:3',
            'comic_type' => 'string|exists:comic_types,name'
        ];
    }
}
