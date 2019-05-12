<?php

namespace App\Http\Controllers;

use App\Http\Requests\ZayavkaRequest;
use Illuminate\Http\Request;
use Auth;
use App\Zayavka;
use App\Librs\Cookie;

class ZayavkaController extends Controller
{
   /* public function postZayavka(){
		
		dd($_POST);
	}*/
	
	public function postZayavka(ZayavkaRequest $r){
		
$arr = unserialize($r->bodys);
$arr_body = [];
foreach($arr as $key => $value){
	$id = (int)$key;
	if($id > 0){
		$arr_body[$id] = $value;	
	}
}
$r['body'] = serialize($arr_body);
		 $r['user_id']=(Auth::guest())?0:Auth::user()->id;
		 Zayavka::create($r->all());
		
		/* Foreach($_COOKIE as $key=>$value){
			 $id=(int)$key;
			  if ($id>0){
				  setcookie($id, '', time()-1, '/');
		 }
		 		 
		}*/
		
	/*$cook = new Cookie;
	$cook->deleteAll();*/
	
	\App::make('\App\Librs\Cookie')->deleteAll(); //приоритет(use App\Librs\Cookie можно не прописывать)
	return redirect()->back();
}
}
