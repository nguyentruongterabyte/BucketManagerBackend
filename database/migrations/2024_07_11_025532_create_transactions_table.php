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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->double('_amount')->default(0);
            $table->text('_description')->nullable();
            $table->unsignedBigInteger('_wallet_id');
            $table->unsignedBigInteger('_category_id')->nullable();
            $table->text('_memo')->nullable();
            $table->unsignedBigInteger('_from_wallet_id')->nullable();
            $table->unsignedBigInteger('_to_wallet_id')->nullable();
            $table->double('_fee')->default(0);
            $table->unsignedBigInteger('_transaction_type_id');
            $table->timestamps('_date');

            $table->foreign('_wallet_id')->references('id')->on('wallets');
            $table->foreign('_category_id')->references('id')->on('categories');
            $table->foreign('_from_wallet_id')->references('id')->on('wallets');
            $table->foreign('_to_wallet_id')->references('id')->on('wallets');
            $table->foreign('_transaction_type_id')->references('id')->on('transaction_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transactions');
    }
};
