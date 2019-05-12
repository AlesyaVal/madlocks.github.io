<?php

namespace App\Http\Controllers;

use App\feedback;

class FeedbackController extends Controller
{

   public function getIndex(){
	$feeds= Feedback::where('Showhide', 'Show')   
	->orderBy('id','DESC')
	->paginate(20);
	return view('feedback', compact('feeds'));
   }
}
