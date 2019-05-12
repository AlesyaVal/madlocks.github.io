<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Zayavka;

class ZayavkaController extends Controller {

	/**
	 * Index page
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(){
		$all=Zayavka::orderBy('id','DESC')->paginate(10);
		return view('admin.zayavka.index', compact('all'));
	}
	public function getIndex($id=null){
		$obj=Zayavka::find($id);
		return view('admin.zayavka.one', compact('obj'));
	}
}