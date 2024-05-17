<?php

namespace App\Http\Controllers;

use App\Models\History;
use Illuminate\Http\Request;

class HistoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $history = History::all();
        return view('admin.history.index', compact(('history')));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.history.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = History::all()->count();

        if($data < 1) {
            $validateData = $request->validate([
                'judul'     => 'required|max:255',
                'deskripsi' => 'required',
                'gambar'    => 'required|image|file'
            ]);

            $validateData['gambar'] = $request->file('gambar')->store('img-history');

            History::create($validateData);

            return redirect('/history')->with('message', 'Data berhasil ditambahkan');
            } else {
            return redirect('/history')->with('danger', 'Data sudah ada, tidak bisa di tambahkan lagi');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\History  $history
     * @return \Illuminate\Http\Response
     */
    public function show(History $history)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\History  $history
     * @return \Illuminate\Http\Response
     */
    public function edit(History $history)
    {
        return view('admin.history.edit', compact(('history')));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\History  $history
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, History $history)
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

        $history->update($request->except(['_token','gambar',]));
        if($request->file('gambar') != null){
     $validateData['gambar'] = $request->file('gambar')->store('img-history');
            $history->gambar = $request->file('gambar')->store('img-history');
        }

        $history->update($validateData);

        return redirect('/history')->with('message', 'Data berhasil Di Edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\History  $history
     * @return \Illuminate\Http\Response
     */
    public function destroy(History $history)
    {
        $history->delete();
        return redirect('/history')->with('message', 'Data Berhasil Dihapus');
    }
}
