<?php


use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\api\CategoryController;
use App\Http\Controllers\API\CurrencyController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ExampleController;
use App\Http\Controllers\api\TransactionController;
use App\Http\Controllers\API\WalletController;
use App\Http\Controllers\API\WalletTypeController;


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
Route::get('/currency/search', [CurrencyController::class, 'search']);
Route::get('/currency', [CurrencyController::class, 'index']);
Route::post('/currency', [CurrencyController::class, 'store'])->middleware('custom.auth.sanctum');
Route::post('/currency/import', [CurrencyController::class, 'importFromJson'])->middleware('custom.auth.sanctum');
Route::get('/currency/{id}', [CurrencyController::class, 'show']);
Route::put('/currency/{id}', [CurrencyController::class, 'update'])->middleware('custom.auth.sanctum');
Route::delete('/currency/{id}', [CurrencyController::class, 'destroy'])->middleware('custom.auth.sanctum');

// Account
Route::get('/auth/{id}', [AuthController::class, 'show'])->middleware(['custom.auth.sanctum', 'check.user.id']);
Route::post('/auth/login', [AuthController::class, 'login']);
Route::post('/auth/register', [AuthController::class, 'register']);
Route::post('/auth/refresh', [AuthController::class, 'refresh']);
Route::post('/auth/checker/email', [AuthController::class, 'emailChecker']);
Route::post('/auth/checker/password', [AuthController::class, 'passwordChecker']);
Route::post('/auth/password/reset-request', [AuthController::class, 'sendResetPasswordEmail']);
Route::post('/auth/logout', [AuthController::class, 'logout'])->middleware('custom.auth.sanctum');

Route::get('/auth/password/reset', [AuthController::class, 'showResetForm'])->name('password.reset');
Route::post('/auth/password/submit', [AuthController::class, 'updatePassword']);

// Wallet
Route::post('/wallet', [WalletController::class, 'store'])->middleware(['custom.auth.sanctum', 'check.user.id']);
Route::put('/wallet/update/{id}/{walletId}', [WalletController::class ,'update'])->middleware(['custom.auth.sanctum', 'check.user.id']);

// Wallet type
Route::get('/wallet-type', [WalletTypeController::class, 'index']);
Route::post('/wallet-type', [WalletTypeController::class, 'store']);
Route::get('/wallet-type/{code}', [WalletTypeController::class, 'show']);
Route::put('/wallet-type/{code}', [WalletTypeController::class, 'update']);
Route::delete('/wallet-type/{code}', [WalletTypeController::class, 'destroy']);

// Transaction
Route::post('/transaction', [TransactionController::class, 'store'])->middleware(['custom.auth.sanctum']);
Route::get('/transaction/{id}', [TransactionController::class, 'getByUserId'])->middleware(['custom.auth.sanctum', 'check.user.id']);
Route::put('/transaction/{id}/{transactionId}', [TransactionController::class, 'update'])->middleware(['custom.auth.sanctum', 'check.user.id']);
Route::delete('/transaction/{id}/{transactionId}', [TransactionController::class, 'destroy'])->middleware(['custom.auth.sanctum', 'check.user.id']);
// Category
Route::get('/category', [CategoryController::class, 'index']);
