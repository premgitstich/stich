<?php
class Vend extends Eloquent{

	 protected $fillable = ['product_name', 'sku','quantity','price'];

	 protected $table = 'vend_product';
}