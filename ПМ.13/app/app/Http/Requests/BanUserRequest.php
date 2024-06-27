<?php

namespace App\Http\Requests;

class BanUserRequest extends ApiRequest
{
    public function rules(): array
    {
        return [
            'date_end'           => 'required|date',
            'reason_description' => 'required|string|min:5'
        ];
    }
}
