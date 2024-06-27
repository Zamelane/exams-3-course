<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $fillable = [
        'comic_id',
        'name',
        'chapter_number',
        'volume_number',
        'date_added'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];

    public function countLikes() {
        return Like_chapter::where('chapter_id', '=', $this->id)->count();
    }
}
