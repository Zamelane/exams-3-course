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
        Schema::create('comic_names', function (Blueprint $table) {
            $table->foreignId('comic_id')->constrained()->cascadeOnUpdate();
            $table->string('name', 75);
            $table->boolean('is_default')->default(false);
            $table->primary(['comic_id', 'name']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comic_names');
    }
};
