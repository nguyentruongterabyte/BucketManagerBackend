<?php

namespace App\Http\Middleware;

use App\Models\ResponseObject;
use Closure;
use Illuminate\Http\Request;
use Laravel\Sanctum\PersonalAccessToken;

class CheckUserIdFromToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */

    public function handle(Request $request, Closure $next)
    {
        // Get token in request 
        $token = $request->bearerToken();

        // find token in table personal_access_tokens
        $accessToken = PersonalAccessToken::findToken($token);
        
        if (!$accessToken) {
            $response = new ResponseObject(401, 'Invalid token');
            return response()->json($response->toArray(), 401);
        }

        // take user ID from token
        $userIdFromToken = $accessToken->tokenable_id;
        
         // Take user ID from route or from raw body
        $routeUserId = $request->route('id') ?? $request->input('_account_id');

        if ($userIdFromToken != $routeUserId) {
            $response = new ResponseObject(403, 'Forbidden: You do not have access to this resource');
            return response()->json($response->toArray(), 403);
        }

        return $next($request);


    }
}
