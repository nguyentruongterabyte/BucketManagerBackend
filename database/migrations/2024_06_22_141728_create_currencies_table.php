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
            $table->charset = 'utf8mb4';
            $table->collation = 'utf8mb4_general_ci';
            $table->timestamps();
            $table->id();
            $table->string('_ISO_code', 5)->nullable()->collation('utf8mb4_general_ci');
            $table->string('_state_territory')->collation('utf8mb4_general_ci');
            $table->string('_symbol', 5)->collation('utf8mb4_general_ci');
            $table->string('_currency')->collation('utf8mb4_general_ci');
            $table->string('_fractional_unit')->nullable()->collation('utf8mb4_general_ci');
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
