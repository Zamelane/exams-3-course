<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;

use App\Exceptions\ApiException;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Str;

class User extends Authenticatable
{
    use HasFactory, Notifiable;
    public $timestamps = false;

    /**
     * Атрибуты, которые можно массово присваивать.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'nickname',
        'email',
        'password',
        'avatar_id',
        'role_id'
    ];

    /**
     * Атрибуты, которые должны быть скрыты для сериализации.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password'
    ];

    /**
     * Получите атрибуты, которые должны быть приведены к какому-либо виду.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'password' => 'hashed'
        ];
    }

    /*===СВЯЗИ===*/
    public function role() {
        return $this->belongsTo(Role::class);
    }

    public function bans() {
        return $this->hasMany(Ban::class);
    }

    public function avatar() {
        return $this->belongsTo(Avatar::class);
    }

    /*===ОБЩИЙ ФУНКЦИОНАЛ===*/
    public static function getBanId(User $user) {
        // Получаем все баны пользователя
        $allBans  = $user->bans;

        foreach ($allBans as $ban)
            if (date($ban->date_end) > date(now()))
            {
                return $ban->id;
                break;
            }
        return null;
    }

    public static function checkAvailable(User $user) {
        if (User::getBanId($user))
            throw new ApiException(401, 'You are banned');
    }

    public static function getUserByCredentials($credentials) {
        return User::where($credentials)->first();
    }

    public static function getByToken(string $token) {
        $auth = Auth::where('token', $token)->first();

        if (!$auth)
            throw new ApiException(401, 'Invalid token');

        return $auth->user;
    }

    public static function newToken(User $user) {
        $token = Str::random(25);
        $auth  = new Auth([
                'token' => $token,
                'user_id' => $user->id
            ]);
        if ($auth->save())
            return $token;
    }
}
