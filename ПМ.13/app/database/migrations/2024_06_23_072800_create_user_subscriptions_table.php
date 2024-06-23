<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('user_subscriptions', function (Blueprint $table) {
            $table->bigIncrements('id')->primary();
            $table->foreignId('user_id')->constrained()->cascadeOnUpdate();
            $table->foreignId('acquiring_id')->constrained()->cascadeOnUpdate();
            $table->foreignId('subscription_price_id')->constrained()->cascadeOnUpdate();
            $table->dateTime('date_payment');
            $table->dateTime('date_end');
            $table->dateTime('date_cancel');
            $table->decimal('pay_amount', 16, 2);
            $table->decimal('refund_amount', 16, 2);
            $table->string('id_payment');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_subscriptions');
    }
};
