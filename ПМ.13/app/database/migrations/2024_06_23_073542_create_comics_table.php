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
        Schema::create('comics', function (Blueprint $table) {
            $table->id();
            $table->text('description');
            $table->decimal('release_year', 4, 0);
            $table->enum('age_limit', ["18+", "16+", "12+", "6+", "0+"]);
            $table->string('poster_path');
            $table->tinyInteger('comic_type_id')->foreignId('comic_type_id')->constrained()->cascadeOnUpdate();
            $table->tinyInteger('release_status_id')->foreignId('release_status_id')->constrained()->cascadeOnUpdate();
            $table->tinyInteger('translate_status_id')->foreignId('translate_status_id')->constrained()->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comics');
    }
};
