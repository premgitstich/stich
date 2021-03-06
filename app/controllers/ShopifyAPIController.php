<?php

class ShopifyAPIController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$error="false";
		
		$apikey=Config::get('shopifyAPIKeys.shopify_apikey');
		$password=Config::get('shopifyAPIKeys.shopify_apipassword');
		$shopname=Config::get('shopifyAPIKeys.shopify_shopname');

		
		$shopifyBaseUrl="https://".$apikey.":".$password."@".$shopname."/admin/";		
		$url=$shopifyBaseUrl.'products.json';
		
		/*
		//Need to define generic curl function
		
		$ch = curl_init($url); 
		$curl_response=curl_exec ($ch); 
		curl_close ($ch); 
		*/

		$http_response=file_get_contents($url);
		$response=json_decode($http_response);

		
		return Response::json( array(
		        'error' => $error,
		        'result' => $response ),
        		200
    		);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$apikey=Config::get('shopifyAPIKeys.shopify_apikey');
		$password=Config::get('shopifyAPIKeys.shopify_apipassword');
		$shopname=Config::get('shopifyAPIKeys.shopify_shopname');

		//Need to define generic curl function
		
		$shopifyBaseUrl="https://".$apikey.":".$password."@".$shopname."/admin/";		
		$url=$shopifyBaseUrl.'products.json';

		$http_response=file_get_contents($url);
		$response = json_decode($http_response,true);
		
		foreach($response as $products){
			foreach($products as $product){
				$variants=$product['variants'];

				foreach($variants as $variant){
				
					$this->storeToShopify($product,$variant);
					
					$this->storeToStichliteInventory($product,$variant);

					$this->storeToStichliteInventoryDetails($product,$variant);
					
				}
			}
		}
		
	}

	private function storeToShopify($product,$variant){
		$sku=$variant['sku'];
		$record = Shopify::where('sku','=',$sku)->first();
		
		//Insert or update
		if($record){

			$record->quantity=$variant['inventory_quantity'];
			$record->price=$variant['price'];
			$record->save();
			
		}else{
			$record = new Shopify();
			$record->product_name=$product['title'];
			$record->sku=$sku;
			$record->quantity=$variant['inventory_quantity'];
			$record->price=$variant['price'];
			
			$record->save();
		}
	}

	private function storeToStichliteInventory($product,$variant){
		$sku=$variant['sku'];

		$channel='shopify';
				
		$record = Stichliteinventory::where('sku','=',$sku)->first();
		
		//Insert or update
		if($record){
			
			$record->save();
			$record->channel=$channel;
			$record->price=$variant['price'];
		
		}else{
			
			$record = new Stichliteinventory();
			$record->product_name=$product['title'];
			$record->sku=$sku;
			$record->quantity=$variant['inventory_quantity'];
			$record->price=$variant['price'];
			$record->channel=$channel;
			$record->save();
		}
	}

	private function storeToStichliteInventoryDetails($product,$variant){
		$sku=$variant['sku'];

		$channel='shopify';

		$record = Stichliteinventorydetails::where('sku','=',$sku)->first();
		


		//Insert or update
		if($record){

			$stichliteRecord=Stichliteinventory::where('sku','=',$sku)->first();

			
			$record->quantity_on_pull=$variant['inventory_quantity'];
			$record->quantity_on_stichlite=$stichliteRecord->quantity;

			$record->price=$variant['price'];
			$record->channel=$channel;
			$record->save();
		
		}else{
			$record = new Stichliteinventorydetails();
			$record->product_name=$product['title'];
			$record->sku=$sku;
			$record->quantity_on_pull=$variant['inventory_quantity'];
			$record->price=$variant['price'];
			$record->channel=$channel;
			$record->save();
		}
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	function syncShopify(){
	
		
		return "need to complete sync for shopify";
	}


}
