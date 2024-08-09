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
        Schema::create('budgets', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('_name');
            $table->double('_amount')->default(0);
            $table->timestamp('_start_date')->nullable();
            $table->timestamp('_end_date')->nullable();
            $table->string('_color', 10);
            $table->string('_period', 12);
            $table->unsignedBigInteger('_account_id');

             $table->foreign('_account_id')
                ->references('id')
                ->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('budgets');
    }
};
