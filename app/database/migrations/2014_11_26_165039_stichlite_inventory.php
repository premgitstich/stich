<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class StichliteInventory extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('stichlite_inventory', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('product_name');
			$table->string('sku')->index();
			$table->string('channel');
			$table->string('quantity');
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
		Schema::table('stichlite_inventory', function(Blueprint $table)
		{
			Schema::drop('stichlite_inventory');
		});
	}

}
