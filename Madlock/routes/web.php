<?php


Route::get('/', 'BaseController@getIndex'); 
    
Route::post('ajax', 'AjaxController@postIndex');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/home', 'HomeController@postIndex');
Route::get('feedback', 'FeedbackController@getIndex');
Route::get('catalog/{id}','CatalogController@getIndex');
Route::get('categories','ProductController@getAll');
Route::group(['middleware'=>['authuser']], function (){
	Route::get('basket', 'BasketController@getIndex');
});
Route::get('product/{id}', 'ProductController@getOne');
Route::get('basket/add/{id}', 'BasketController@getAdd');
Route::get('basket', 'BasketController@getAll');
Route::get('basket/dell/{id}', 'BasketController@getDell');
Route::get('basket/clear', 'BasketController@getClear');
Route::get('zayavka', 'BasketController@index');
Route::post('order', 'ZayavkaController@postZayavka');
Route::get('admin/zayavka/one/{id}', 'Admin\ZayavkaController@getIndex');


Route::get('{url}', 'staticController@getIndex'); //всегда последний
