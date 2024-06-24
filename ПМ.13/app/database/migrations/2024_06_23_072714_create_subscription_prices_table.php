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
        Schema::create('subscription_prices', function (Blueprint $table) {
            $table->bigIncrements('id')->primary();
            $table->decimal('price', 16, 2);
            $table->decimal('discount_percent', 2, 0);
            $table->tinyInteger('days_count');
            $table->foreignId('subscription_id')->constrained()->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('subscriptions_prices');
    }
};
