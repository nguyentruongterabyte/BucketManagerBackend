<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Http\Requests\Auth\RefreshTokenRequest;
use App\Http\Requests\Auth\RegisterRequest;
use App\Http\Requests\Auth\EmailCheckerRequest;
use App\Http\Requests\Auth\PasswordCheckerRequest;
use App\Mail\PasswordResetMail;
use App\Models\RefreshToken;
use App\Models\ResponseObject;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
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

    public function show($id) {

        $user = User::findOrFail($id);
        $user->load('currency');
        $user->load('wallets');
        $user->load('wallets.walletType');
        // return user information
        $response = new ResponseObject(200, 'Success', $user);
        return response()->json($response->toArray(), 200);
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
        $user->load('wallets');
        $user->load('wallets.walletType');
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
            return response()->json($response->toArray());
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
        $user->load('wallets');
        $user->load('wallets.walletType');

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

    public function logout(RefreshTokenRequest $request)
    {
        $request->validated();
        $user = $request->user();
        $refreshToken = $request->_refresh_token;
        if (!$user) {
            $response = new ResponseObject(401, 'Unauthorized');
            return response()->json($response->toArray(), 401);
        }

        $user->tokens()->delete();

        // Delete refresh token on table
        RefreshToken::where('token', $refreshToken)->delete();
        
        $response = new ResponseObject(200, 'Logged out successfully');
        return response()->json($response->toArray());
    }

    public function sendResetPasswordEmail(Request $request) {

        $user = User::where('_email', $request->_email)->first();
        if (!$user) {
            $response = new ResponseObject(404, "Email not found");
            return response()->json($response->toArray());
        }
        $endPoint = getenv('APP_URL');
        $link = $endPoint . '/api/auth/password/reset?key=' . $user->_email . '&reset=' . $user->_password;

        $mailData = [
            'link' => $link,
            'email' => $user->_email,
            'password' => $user->_password
        ];

        // Send mail using Mailable class
        try {
            Mail::to($user->_email)->send(new PasswordResetMail($mailData));
            $response = new ResponseObject(200, 'Please check your email ' . $user->_email . ' to change password!');
            return response()->json($response->toArray());
        } catch (\Exception $e) {
            $response = new ResponseObject(422, 'An error occurred with sending mail');
            echo $e->getMessage();
            return response()->json($response->toArray());
        }
    }

    public function showResetForm(Request $request) {
        $key = $request->query('key');
        $reset = $request->query('reset');

        $user = User::where('_email', $key)->first();
        $endPoint = getenv('APP_URL');
        $link = $endPoint . '/api/auth/password/submit';
        if ($user && $request->reset == $user->_password) {
            return view('auth.reset_password', ['link' => $link, 'key' => $key, 'reset' => $reset, ]);
        }

        return response()->json(['message' => 'Forbidden'], 403);

    }

   
    public function updatePassword(Request $request)
    {

        $user = User::where('_email', $request->key)->first();
        if ($user && $request->reset == $user->_password) {
            $user->_password = Hash::make($request->password);
            $user->save();

            return response()->json(['message' => 'Password changed successfully'], 200);
        }

        return response()->json(['message' => 'Invalid token or user'], 403);
    }
}
