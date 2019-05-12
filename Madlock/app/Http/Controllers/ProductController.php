<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getAll(){
        $cats=Category::all();
		return view('cats', compact ('cats'));
    }
	public function getOne($id=null){
        $obj=Product::find($id);
		return view('product', compact ('obj'));
    }
}
