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
        Schema::create('comic_ratings', function (Blueprint $table) {
            $table->foreignId('user_id')->constrained()->cascadeOnUpdate();
            $table->foreignId('comic_id')->constrained()->cascadeOnUpdate();
            $table->decimal('value', 2, 0);
            $table->primary(['user_id', 'comic_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comic_ratings');
    }
};
