<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slider = Slider::all();

        return view('admin.slider.index', compact(('slider')));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.slider.create', [
            'request' => $request
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $data = Slider::all()->count();

        if($data < 1) {
            $validateData = $request->validate([
                'judul'     => 'required|max:255',
                'deskripsi' => 'required',
                'media'    => 'required|mimes:mp4'
            ]);

            $validateData['media'] = $request->file('media')->store('slider');

            Slider::create($validateData);

            return redirect('/slider')->with('message', 'Data berhasil ditambahkan');
        } else {
            return redirect('/slider')->with('danger', 'Data sudah ada, tidak bisa di tambahkan lagi');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function show(Slider $slider)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function edit(Slider $slider)
    {
        return view('admin.slider.edit', compact(('slider')));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Slider $slider)
    {
        $validateData = $request->validate([
            'judul'     => 'required|max:255',
            'deskripsi' => 'required',
            'media'    => 'mimes:mp4'
        ]);

        // $input = $request->all();

        // if ($image = $request->file('image')) {
        //     $destinationPath = 'image/';
        //     $imageName = date('Ymd') . "." . $image->getClientOriginalExtension();
        //     $image->move($destinationPath, $imageName);
        //     $input['image'] = $imageName;
        // }

        $slider->update($request->except(['_token','media',]));
        if($request->file('media') != null){
            $validateData['media'] = $request->file('media')->store('slider');
            $slider->media = $request->file('media')->store('slider');
        }

        $slider->update($validateData);

        return redirect('/slider')->with('message', 'Data berhasil Di Edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function destroy(Slider $slider)
    {
        $slider->delete();
        return redirect('/slider')->with('message', 'Data Berhasil Dihapus');
    }
}
