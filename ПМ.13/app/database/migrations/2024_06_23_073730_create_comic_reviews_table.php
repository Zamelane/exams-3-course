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
        Schema::create('comic_reviews', function (Blueprint $table) {
            $table->bigIncrements('id')->primary();
            $table->foreignId('user_id')->constrained()->cascadeOnUpdate();
            $table->foreignId('comic_id')->constrained()->cascadeOnUpdate();
            $table->string('content');
            $table->dateTime('lat_update_date');
            $table->boolean('is_moderated')->nullable()->default(null);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comic_reviews');
    }
};
