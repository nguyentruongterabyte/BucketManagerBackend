<?php

namespace App\Http\Middleware;

use App\Models\ResponseObject;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
       if (Auth::guard('sanctum')->check()) {
            return $next($request);
        }

        $response = new ResponseObject(401, 'Unauthorized');
        return response()->json($response->toArray(), 401);
    }
}
