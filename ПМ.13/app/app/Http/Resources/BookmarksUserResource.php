<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BookmarksUserResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'comic_name' => $this->comic->name(),
            'reading_status' => $this->reading_status->name
        ];
    }
}
