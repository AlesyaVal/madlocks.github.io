<?php

namespace App\Http\Controllers;

use App\Catalog;
use Illuminate\Http\Request;


class CatalogController extends Controller
{
    public function getIndex($id=null){
		$obj=Catalog::find($id);
		return view('Catalog', Compact ('obj'));
	}
	
}
