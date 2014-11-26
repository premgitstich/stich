<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ShopifyProduct extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('shopify_product', function(Blueprint $table)
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
		Schema::table('shopify_product', function(Blueprint $table)
		{
			Schema::drop('shopify_product');

		});
	}

}
