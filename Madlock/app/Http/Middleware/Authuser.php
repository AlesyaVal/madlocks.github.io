<?php

namespace App\Http\Middleware;

use Auth;
use Closure;

class Authuser
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
        If(Auth::guest()){
			return redirect('/');
		}
		return $next($request);
    }
}
