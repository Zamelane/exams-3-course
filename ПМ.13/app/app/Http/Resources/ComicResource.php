<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ComicResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'               => $this->id,
            'name'             => $this->name(),
            'description'      => $this->description,
            'release_year'     => $this->release_year,
            'age_limit'        => $this->age_limit,
            'poster'           => $this->poster_path,
            'comic_type'       => $this->comic_type->name,
            'translate_status' => $this->translate_status->name,
            'release_status'   => $this->release_status->name,
            'chapters'         => ChapterResource::collection($this->chapters)
        ];
    }
}
