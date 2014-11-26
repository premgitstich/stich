<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class StichliteInventoryDetails extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('stichlite_inventory_syncdetails', function(Blueprint $table)
		{

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
			//
		});
	}

}
