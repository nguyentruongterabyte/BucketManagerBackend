<?php

use App\Http\Controllers\API\AccountController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\ColorController;
use App\Http\Controllers\API\CurrencyController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ExampleController;
use App\Http\Controllers\API\WalletTypeController;
use App\Models\ResponseObject;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

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

// Currency
Route::middleware('auth:sactum')->get('/currency', [CurrencyController::class, 'index']);
Route::post('/currency', [CurrencyController::class, 'store']);
Route::get('/currency/{id}', [CurrencyController::class, 'show']);
Route::put('/currency/{id}', [CurrencyController::class, 'update']);
Route::delete('/currency/{id}', [CurrencyController::class, 'destroy']);

// Account
Route::post('/auth/login', [AuthController::class, 'login']);
Route::post('/auth/register', [AuthController::class, 'register']);

// Color
Route::get('/color', [ColorController::class, 'index']);
Route::post('/color', [ColorController::class, 'store']);
Route::get('/color/{id}', [ColorController::class, 'show']);
Route::put('/color/{id}', [ColorController::class, 'update']);
Route::delete('/color/{id}', [ColorController::class, 'destroy']);

// Wallet type
Route::get('/wallet-type', [WalletTypeController::class, 'index']);
Route::post('/wallet-type', [WalletTypeController::class, 'store']);
Route::get('/wallet-type/{code}', [WalletTypeController::class, 'show']);
Route::put('/wallet-type/{code}', [WalletTypeController::class, 'update']);
Route::delete('/wallet-type/{code}', [WalletTypeController::class, 'destroy']);