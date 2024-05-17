<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menu = Menu::all();
        return view('admin.menu.index', compact(('menu')));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.menu.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'judul'     => 'required|max:255',
            'deskripsi' => 'required',
            'gambar'    => 'required|image|file'
        ]);

        $validateData['gambar'] = $request->file('gambar')->store('img-menu');

        Menu::create($validateData);

        return redirect('/menu')->with('message', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menu)
    {
        return view('admin.menu.edit', compact(('menu')));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {
        $validateData = $request->validate([
            'judul'     => 'required|max:255',
            'deskripsi' => 'required',
            'gambar'    => 'image|file'
        ]);

        // $input = $request->all();

        // if ($image = $request->file('image')) {
        //     $destinationPath = 'image/';
        //     $imageName = date('Ymd') . "." . $image->getClientOriginalExtension();
        //     $image->move($destinationPath, $imageName);
        //     $input['image'] = $imageName;
        // }

        $menu->update($request->except(['_token','gambar',]));
        if($request->file('gambar') != null){
     $validateData['gambar'] = $request->file('gambar')->store('img-menu');
            $menu->gambar = $request->file('gambar')->store('img-menu');
        }

        $menu->update($validateData);

        return redirect('/menu')->with('message', 'Data berhasil Di Edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Menu $menu)
    {
        $menu->delete();
        return redirect('/menu')->with('message', 'Data Berhasil Dihapus');
    }
}
