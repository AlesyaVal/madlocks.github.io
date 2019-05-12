<?php

namespace App\Providers;

use App\Zayavka;
use Auth;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
      Zayavka::created(function($obj){
		
		  if (isset($obj->email)){
			  $user_email=$obj->email;
			  $name=$obj->name;
		  }elseif( Auth::user()){
				 $user_email= Auth::user()->email;
				 $name=Auth::user()->name;
			  };
		
		
		
		$theme_user="Уважаемый пользователь. $name, Вам сообщение с сайта афроплетения и колористики ".env('APP_NAME');
		$body_user='<h1>text</h1>';
		
		$theme_admin="Уважаемый на сайте ".env('APP_NAME') ." оставлена заявка";
		$body_admin='<h1>text admin</h1>';
		
		$header ='MIME-Version:1.0'."\r\n";
		$header.='Content-type: text/html; charset=UTF-8'."\r\n";
		$header.='From:'. env('MAIL_FROM_ADDRESS')."\r\n";
		
		@mail(env('MAIL_FROM_ADDRESS'),$theme_admin, $body_admin, $header);
		@mail($user_email, $theme_user, $body_user, $header);
		
		});
	}  
   

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
