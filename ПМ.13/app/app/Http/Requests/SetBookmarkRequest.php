<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SetBookmarkRequest extends ApiRequest
{
    public function rules(): array
    {
        return [
            'type'  => 'required|string|min:3|max:25|exists:reading_statuses,name'
        ];
    }
}
