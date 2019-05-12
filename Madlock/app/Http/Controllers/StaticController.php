<?php

namespace App\Http\Controllers;

use App\Maintext;

class StaticController extends Controller
{
    public function getIndex($url=null){
		$obj= Maintext::where('Url',$url)->first();
		return view('Static', compact('obj'));
	}
}
