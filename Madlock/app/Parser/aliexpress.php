<?php

namespace App\Parser;

use Symfony\Component\DomCrawler\Crawler;
//use App\ProductUser;
use App\Product;
use App\Googlenew;
use Auth;

class Aliexpress implements ParseContract
{
    // use ParseTrait;
    public $crawler; 

    public function __construct()
    {
        set_time_limit(0);
        header('Content-Type: text/html; charset=utf-8');
    }

    public function getParse($url = null, $id=null)
    {
        
        $file = file_get_contents($url);
        $this->crawler = new Crawler($file);
        // echo "test";
		$this->crawler->filter('.answers')->each(function(Crawler $node, $i){
            $name = $node->text();
           // $pic = $node->filter('img')->attr('src');
            echo $name;
            //echo '-'.$pic;
            // echo '<img src="http:'.$pic'">';
            echo "<hr />";
             $obj = new Product;
             $obj->name = $name;
             $obj->picture = $pic;


             

             $arr_pic = explode('/', $pic);
$newfile = $_SERVER['DOCUMENT_ROOT'].'/uploads/thumb/'.end($arr_pic);

if (!copy($pic, $newfile)) {
    echo "не удалось скопировать $file...\n";
}

$obj->save();
        });
		// echo $body;
    }
}