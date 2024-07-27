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
        Schema::create('wallets', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->unsignedBigInteger('_account_id');
            $table->string('_name');
            $table->string('_wallet_type_code', 4);
            $table->double('_initial_amount');
            $table->string('_color', 10);
            $table->boolean('_exclude')->default(0);

            $table->foreign('_account_id')->references('id')->on('users');
            $table->foreign('_wallet_type_code')->references('_code')->on('wallet_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wallets');
    }
};
