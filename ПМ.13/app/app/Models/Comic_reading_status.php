<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comic_reading_status extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $primaryKey = 'user_id';

    protected $fillable = [
        'user_id',
        'comic_id',
        'reading_status_id'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];

    public function comic() {
        return $this->belongsTo(Comic::class);
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function reading_status() {
        return $this->belongsTo(Reading_status::class);
    }
}
