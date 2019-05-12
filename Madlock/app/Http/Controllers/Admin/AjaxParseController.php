<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Parser\Aliexpress;

class AjaxParseController extends Controller
{
     public function getCatalog(){
  $url = $_GET['url'];
  $id = (int)$_GET['id'];
  $parse = new Aliexpress();
  $parse->getParse($url, $id);
 }
}
