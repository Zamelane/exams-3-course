<?php

namespace App\Http\Middleware;

use App\Exceptions\ApiException;
use App\Models\User;
use Closure;
use Illuminate\Http\Request;

class AuthByToken
{
    public function handle(Request $request, Closure $next)
    {
        // Извлекаем токен из заголовка запроса
        $token = $request->bearerToken();

        if (!$token)
            throw new ApiException(401, 'Token not provided');

        $user = User::getByToken($token);

        if (!$user)
            throw new ApiException(401, 'Token not found');
        
         // Записываем пользователя в запрос для последующих обработок в контроллерах
         $request->setUserResolver(function () use ($user) {
            return $user;
        });

        return $next($request);
    }
}
