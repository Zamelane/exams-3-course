<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comic_name extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $primaryKey = 'comic_id';

    protected $fillable = [
        'comic_id',
        'name',
        "is_default"
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];
}
