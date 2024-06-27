<?php

namespace App\Http\Middleware;

use App\Exceptions\ApiException;
use App\Exceptions\ForbiddenForYouException;
use App\Models\User;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleChecker
{
    private $levels = [
        'guest',
        'user',
        'admin'
    ];

    public function handle(Request $request, Closure $next, $allowedLevel = 'guest'): Response
    {
        $allowedLevels = explode('|', $allowedLevel);
        // Определяем роль пользователя
        if (!$user = $request->user())
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
        }
        $userRole = $user->role->code ?? 'guest';
        $block = false;

        // Если пользователь не гость, то проверяем, есть ли унего бан или модерация
        if ($user)
            User::checkAvailable($user);

        if (count($allowedLevels) === 1) {
            $searchUp = $allowedLevel[0];
            $allowedOperations = ["^", "_"];
            if (array_search($searchUp, $allowedOperations) === false) {
                $searchUp = "=";
            }
            $allowedLevel = array_search(str_replace(["^", "_", "="], "", $allowedLevel), $this->levels);
            // Определяем уровень доступа пользователя
            $userAllowedLevel = array_search($userRole, $this->levels);

            // Если у пользователя уровень доступности ниже заданного, то выводим 403 ошибку
            if ($searchUp === "^" && $userAllowedLevel < $allowedLevel
                || $searchUp === "^^" && $userAllowedLevel <= $allowedLevel
                || $searchUp === "_" && $userAllowedLevel > $allowedLevel
                || $searchUp === "=" && $userAllowedLevel != $allowedLevel)
                $block = true;
        }

        if ($block || (array_search($userRole, $allowedLevels) === false && count($allowedLevels) > 1))
            throw new ForbiddenForYouException();

        return $next($request);
    }
}
