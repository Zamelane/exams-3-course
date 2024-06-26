<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Auth extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $primaryKey = 'token';

    protected $fillable = [
        'token',
        'user_id'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];

    /*===СВЯЗИ===*/
    public function user() {
        return $this->belongsTo(User::class);
    }
}
