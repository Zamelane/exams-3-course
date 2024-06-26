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
        Schema::create('comic_reading_statuses', function (Blueprint $table) {
            $table->bigInteger('user_id')->foreignId('user_id')->constrained()->cascadeOnUpdate();
            $table->bigInteger('comic_id')->foreignId('comic_id')->constrained()->cascadeOnUpdate();
            $table->tinyInteger('reading_status_id')->foreignId('reading_status_id')->constrained()->cascadeOnUpdate();
            $table->primary(['user_id', 'comic_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comic_reading_statuses');
    }
};
