<?php

use App\Http\Controllers\SliderController;
use App\Http\Controllers\HistoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\LokasiController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware('countVisitor')->group(function () {
    Route::get('/', function () {
        return view('landingpage');
    })->name('Landing Page');

    Route::get('/dashboard', [AdminController::class, 'index'])->middleware('auth')->name('dashboard');
    // Route::get('/dashboard', function () {
    //     return view('admin.dashboard.dashboard');
    // })->middleware(['auth'])->name('dashboard');

    Route::get('/', [HomeController::class, 'index']);

    Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])->middleware('auth')->name('logout');

    Route::resource('slider', SliderController::class)->middleware('auth');

    Route::resource('history', HistoryController::class)->middleware('auth');

    Route::resource('menu', MenuController::class)->middleware('auth');

    Route::resource('lokasi', LokasiController::class)->middleware('auth');

    Route::resource('profile', ProfileController::class)->middleware('auth');
});

require __DIR__.'/auth.php';
