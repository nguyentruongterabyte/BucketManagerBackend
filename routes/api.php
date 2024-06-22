<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ExampleController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/example', [ExampleController::class, 'index']);
Route::post('/example', [ExampleController::class, 'store']);
Route::get('/example/{id}', [ExampleController::class, 'show']);
Route::put('/example/{id}', [ExampleController::class, 'update']);
Route::delete('/example/{id}', [ExampleController::class, 'destroy']);