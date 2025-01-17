<?php

namespace App\Http\Middleware;

use App\Models\ResponseObject;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum\PersonalAccessToken;

class CustomAuthSanctum
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
       $token = $request->bearerToken();

        if (!$token) {
            $response = new ResponseObject(401, 'Unauthorized');
            return response()->json($response->toArray(), 401);
        }

        $accessToken = PersonalAccessToken::findToken($token);

        if (!$accessToken) {
            $response = new ResponseObject(401, 'Unauthorized');
            return response()->json($response->toArray(), 401);
        }

        $request->setUserResolver(function () use ($accessToken) {
            return $accessToken->tokenable;
        });

        return $next($request);
    }
}
