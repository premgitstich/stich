<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('hello');
});


Route::group( array('prefix' => 'api/' ), function(){
	Route::resource( 'shopify', 'ShopifyAPIController' );
});


Route::group( array('prefix' => 'api/v1' ), function(){

	
	Route::any( 'products/sync', 'StichliteAPIController@sync');

	Route::resource( 'products', 'StichliteAPIController',array('only' => array('index', 'show')));

});