<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Menu;
use App\Models\History;
use App\Models\Lokasi;

class HomeController extends Controller
{
    public function index()
    {
       $slider = Slider::all();
       $history = History::all();
       $menu = Menu::all();
       $lokasi = Lokasi::all(); 
       return view('landingpage', [
        'slider' => $slider,
        'history' => $history,
        'menu' => $menu,
        'lokasi' => $lokasi
    ]);
    }
}
