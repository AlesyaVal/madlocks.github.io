<?php

namespace App\Providers\ViewComposers;

use Illuminate\Contracts\View\View;
use App\Catalog;
use Auth;

class SizeComposer
{
   
    public function Compose(View $view)
    {
	$v_catalogs=Catalog::all();
	$url = $_SERVER['REQUEST_URI'];
	$view->with('v_catalogs', $v_catalogs)->with('url', $url);
    }

}