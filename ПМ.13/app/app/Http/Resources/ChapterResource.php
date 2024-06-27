<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ChapterResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'         => $this->id,
            'name'       => $this->name,
            'number'     => $this->chapter_number,
            'volume'     => $this->volume_number,
            'date_added' => $this->date_added,
            'likes'      => $this->countLikes()
        ];
    }
}
