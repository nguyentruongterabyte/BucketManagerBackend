<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Models\ResponseObject;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    // register method
    public function register(Request $request) {
        // Validate request
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed'
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors()->all();
            $response = new ResponseObject(422, 'Validation Failed', $errors);
            return response()->json($response->toArray(), 422);
        }

        // Create user
        $user = User::create([
            '_name' => $request->_name,
            '_email' => $request->_email,
            '_password' => Hash::make($request->password)
        ]);

        // Create token for the user
        $token = $user->createToken('api-token')->plainTextToken;

        // Create response object
        $response = new ResponseObject(201, 'User registered successfully', [
            'user' => $user,
            'token' => $token
        ]);

        return response()->json($response->toArray(), 201);
    }

    // login method
    public function login(LoginRequest $request) {

        $request->validated();

        $user = User::where('_email', $request->_email)->first();

        if (!$user || !Hash::check($request->_password, $user->_password)) {
            $response = new ResponseObject(401, 'Invalid credentials', null);
            return response()->json($response->toArray(), 401);
        }

        $token = $user->createToken('api-token')->plainTextToken;

        $response = new ResponseObject(200, 'Success', [
            'user' => $user,
            'token' => $token
        ]);
        return response()->json($response->toArray(), 200);

    }

}
