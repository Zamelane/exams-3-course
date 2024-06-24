<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscription_price extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $fillable = [
        'price',
        'discount_percent',
        'days_count',
        'subscription_id'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];
}
