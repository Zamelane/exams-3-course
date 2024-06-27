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

    public function names() {
        return $this->hasMany(Comic_name::class);
    }

    public function name() {
        $names = $this->names;

        foreach ($names as $name)
            if ($name->is_default)
                return $name->name;
    }

    public function comic_type() {
        return $this->belongsTo(Comic_type::class);
    }

    public function release_status() {
        return $this->belongsTo(Release_status::class);
    }

    public function translate_status() {
        return $this->belongsTo(Translate_status::class);
    }

    public function chapters() {
        return $this->hasMany(Chapter::class);
    }
}
