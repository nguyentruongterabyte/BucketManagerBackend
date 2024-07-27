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
        Schema::create('users', function (Blueprint $table) {
        $table->id();
        $table->string('_name', 25);
        $table->string('_email')->unique();
        $table->timestamp('email_verified_at')->nullable();
        $table->string('_password');
        $table->rememberToken();
        $table->timestamps();
        
        $table->unsignedBigInteger('_initial_currency_id')->nullable();
        
        // Create foreign key references currencies table
        $table->foreign('_initial_currency_id')->references('id')->on('currencies');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
    
        Schema::dropIfExists('users');
    }
};
