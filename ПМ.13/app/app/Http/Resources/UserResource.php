<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'        => $this->id,
            'nickname'  => $this->nickname,
            'email'     => $this->email,
            'role'      => $this->role->code,
            'avatar'    => $this->avatar->path
        ];
    }
}
