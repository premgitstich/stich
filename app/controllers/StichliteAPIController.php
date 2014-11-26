<?php

class StichliteAPIController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		
		$records = Stichliteinventorydetails::all();

		return Response::json( array(
		        'error' => false,
		        'result' => $records ),
        		200
    	);
	}



	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$records = Stichliteinventorydetails::find($id);

		return Response::json( array(
		        'error' => false,
		        'result' => $records ),
        		200
    	);
	}



	public function sync()
	{
		// Pull from  each sales Channel eg: Shopify
		
		// Get Inventory details from stichlight
		
		// Find changes between stichlite inventory and sales channel
		
		// Push difference in quanity to Sales channel
		
		
		

		$result=App::make('ShopifyAPIController')->syncShopify();


	}

}
