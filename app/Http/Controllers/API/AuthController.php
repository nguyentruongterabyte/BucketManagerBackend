<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Http\Requests\Auth\RefreshTokenRequest;
use App\Http\Requests\Auth\RegisterRequest;
use App\Http\Requests\Auth\EmailCheckerRequest;
use App\Http\Requests\Auth\PasswordCheckerRequest;
use App\Models\RefreshToken;
use App\Models\ResponseObject;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


class AuthController extends Controller
{

    public function passwordChecker(PasswordCheckerRequest $request) {
        $request->validated();

        $response = new ResponseObject(200, "Success");
        return response()->json($response->toArray());
    }

    public function emailChecker(EmailCheckerRequest $request) {
        $request->validated();

        $response = new ResponseObject(200, "Success");
        return response()->json($response->toArray());
    }

    public function register(RegisterRequest $request) {
        // Validate request
        $request->validated();

        // Create user
        $user = User::create([
            '_name' => $request->_name,
            '_email' => $request->_email,
            '_password' => Hash::make($request->_password),
            '_initial_currency_id' => $request->_initial_currency_id
        ]);


        // Create token for the user
        $token = $user->createToken('api-token')->plainTextToken;

         // create refreshToken
        $refreshToken = RefreshToken::create([
            'user_id' => $user->id,
            'token' => Str::random(64),
            'expires_at' => Carbon::now()->addDays(30), // refreshToken expires in 30 days
        ]);  

        $user->load('currency');
        // Create response object
        $response = new ResponseObject(201, 'User registered successfully', [
            'user' => $user,
            'token' => $token, 
            '_refresh_token' => $refreshToken->token
        ]);

        return response()->json($response->toArray(), 201);
    }

    public function login(LoginRequest $request) {

        $request->validated();

        $user = User::where('_email', $request->_email)->first();

        if (!$user || !Hash::check($request->_password, $user->_password)) {
            $response = new ResponseObject(401, 'Invalid credentials', null);
            return response()->json($response->toArray(), 401);
        }

        $token = $user->createToken('api-token', ['*'], Carbon::now()->addMinutes(60))->plainTextToken;

        // create refreshToken
        $refreshToken = RefreshToken::create([
            'user_id' => $user->id,
            'token' => Str::random(64),
            'expires_at' => Carbon::now()->addDays(30), // refreshToken expires in 30 days
        ]);        
        
        // Load the related currency information
        $user->load('currency');
        $response = new ResponseObject(200, 'Success', [
            'user' => $user,
            'token' => $token, 
            '_refresh_token' => $refreshToken->token
        ]);
        return response()->json($response->toArray(), 200);

    }

    public function refresh(RefreshTokenRequest $request) {
        $request->validated();

        $refreshToken = RefreshToken::where('token', $request->_refresh_token)->first();

        if (!$refreshToken || $refreshToken->expires_at->isPast()) {
            $response = new ResponseObject(403, 'Invalid or expired refresh token');
            return response()->json($response->toArray(), 403);
        }

        $user = $refreshToken->user;

        // Revoke old access tokens...
        $user->tokens()->delete();

        // create new token
        $newToken = $user->createToken('api-token', ['*'], Carbon::now()->addMinutes(60));

        $response = new ResponseObject(200, "Success", $newToken->plainTextToken);

        return response()->json($response->toArray());
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        $response = new ResponseObject(200, 'Logged out successfully');
        return response()->json($response->toArray());
    }

}
