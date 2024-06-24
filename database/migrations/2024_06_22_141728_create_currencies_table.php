<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('currencies', function (Blueprint $table) {
            $table->timestamps();
            $table->id();
            $table->string('_ISO_code', 4)->nullable();
            $table->string('_state_territory');
            $table->string('_symbol', 5);
            $table->string('_currency');
            $table->string('_fractional_unit')->nullable();
            $table->integer('_number_to_basic')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('currencies');
    }
};
