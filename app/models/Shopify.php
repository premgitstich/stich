<?php

class Shopify extends Eloquent{

	 protected $fillable = ['product_name', 'sku','quantity','price','attributes'];

	 protected $table = 'shopify_product';
}

?>