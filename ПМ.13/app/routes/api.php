<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BookmarkController;
use App\Http\Controllers\ComicController;
use Illuminate\Support\Facades\Route;

// Управление авторизацией
Route::controller(AuthController::class)
    ->prefix('auth')
    ->group(function ($unauthorized) {
       $unauthorized->post      ('login',              'login');
       $unauthorized->post      ('signup',             'signup');
       $unauthorized->middleware('auth')->get('logout','logout');
    });

// Управление комиксами и закладками
Route::group([
   'controller' => ComicController::class,
   'middleware' => 'auth',
   'prefix'     => 'comics'
], function ($comics) {
   $comics->group([
      'controller' => BookmarkController::class,
      'prefix'     => '{comic_id}/bookmark'
   ], function($bookmark) {
      $bookmark->post  ('', 'setBookmark'   );
      $bookmark->delete('', 'removeBookmark');
   });
});

// Списки закладок
Route::group([
   'controller' => BookmarkController::class,
   'prefix'     => 'bookmarks'
], function($bookmark) {
   $bookmark->get   ('types', 'listTypes');
   $bookmark->middleware('auth')->get('', 'userBookmarks');
});