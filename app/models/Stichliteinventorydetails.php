<?php
class StichliteInventoryDetails extends Eloquent{

	 protected $fillable = ['product_name', 'sku','quantity','price','quantity_on_stichlite','quantity_on_stichlite','quantity_on_pull','quantity_to_push'];

	 protected $table = 'stichlite_inventory_syncdetails';
}
