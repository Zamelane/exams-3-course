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
        Schema::create('comic_creators', function (Blueprint $table) {
            $table->foreignId('comic_id')->constrained()->cascadeOnUpdate();
            $table->foreignId('creator_id')->constrained()->cascadeOnUpdate();
            $table->primary(['comic_id', 'creator_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comic_creators');
    }
};
