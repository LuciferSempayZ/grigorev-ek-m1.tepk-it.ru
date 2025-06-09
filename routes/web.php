<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/materials', [\App\Http\Controllers\MaterialController::class, 'index'])->name('materials.index');
Route::get('/materials/create', [\App\Http\Controllers\MaterialController::class, 'create'])->name('materials.create');
Route::post('/materials/create', [\App\Http\Controllers\MaterialController::class, 'store'])->name('materials.store');
Route::get('/materials/{material}', [\App\Http\Controllers\MaterialController::class, 'show'])->name('materials.show');
Route::get('/materials/{material}/edit', [\App\Http\Controllers\MaterialController::class, 'edit'])->name('materials.edit');
Route::post('/materials/{material}/edit', [\App\Http\Controllers\MaterialController::class, 'update'])->name('materials.update');
