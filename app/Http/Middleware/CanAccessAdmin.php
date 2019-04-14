<?php
namespace App\Http\Middleware;
use Closure;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
class CanAccessAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check() && (Auth::user()->role_id == 1 || Auth::user()->role_id == 3 || Auth::user()->role_id == 4)) {
            return $next($request);
        }
        else {
            Auth::logout();
            return new Response(view("unauthorized"));
        }
    }
}