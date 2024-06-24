<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comic extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $fillable = [
        'description',
        'release_year',
        'age_limit',
        'poster_path',
        'comic_type_id',
        'release_status_id',
        'translate_status_id'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];
}
