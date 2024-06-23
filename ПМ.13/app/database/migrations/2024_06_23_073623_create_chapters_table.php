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
        Schema::create('chapters', function (Blueprint $table) {
            $table->bigIncrements('id')->primary();
            $table->foreignId('comic_id')->constrained()->cascadeOnUpdate();
            $table->string('name', 45);
            $table->integer('chapter_number');
            $table->tinyInteger('volume_number');
            $table->date('date_added');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('chapters');
    }
};
