<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class StichliteInventorySyncdetails extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('stichlite_inventory_syncdetails', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('product_name');
			$table->string('sku')->index();
			$table->string('channel');
			$table->string('quantity_on_stichlite');
			$table->string('quantity_on_pull');
			$table->string('quantity_to_push');
			$table->string('price');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('stichlite_inventory_syncdetails', function(Blueprint $table)
		{
			Schema::drop('stichlite_inventory_syncdetails');
		});
	}

}
