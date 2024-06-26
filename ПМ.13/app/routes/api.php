<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;

// Управление авторизацией
Route::controller(AuthController::class)
    ->prefix('auth')
    ->group(function ($unauthorized) {
       $unauthorized->post      ('login',              'login');
       $unauthorized->post      ('signup',             'signup');
       $unauthorized->middleware('auth')->get('logout','logout');
    });