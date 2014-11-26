<?php
class Stichliteinventory extends Eloquent{

	 protected $fillable = ['product_name', 'sku','quantity','price'];

	 protected $table = 'stichlite_inventory';
}
