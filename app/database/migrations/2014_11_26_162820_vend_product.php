<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class VendProduct extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('vend_product', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('product_name');
			$table->string('sku')->index();
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
		Schema::table('vend_product', function(Blueprint $table)
		{
			Schema::drop('vend_product');

		});
	}

}
