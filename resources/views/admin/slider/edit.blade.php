@extends('admin.layout.app')

@section('title','Data Slider')

@section('content')

<div class="container">
    <a href="/slider" class="btn btn-primary mb-3">Kembali</a>
    <div class="col-md8 offset-md-12">
        <form action="{{ route('slider.update', $slider->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label for="">Judul</label>
                <input type="text" class="form-control" name="judul" placeholder="Title" value="{{ $slider->judul }}">
            </div>
            {{-- @error('title')
            <small style="color:red">{{$message}}</small>
            @enderror --}}
            <div class="form-group">
                <label for="">Deskripsi</label>
                <textarea name="deskripsi" id="" cols="30" class="form-control" rows="10" placeholder="Description">{{ $slider->deskripsi }}</textarea>
            </div>
            {{-- <img src="{{ asset('storage/' . $slider->media) }}" class="img-fluid" > --}}
            <video width="320" height="240" controls>
                <source src="{{ asset('storage/'. $slider->media) }}" type="video/mp4">
            </video>
            <div class="form-group">
                <label for="media">Media</label>
                <input type="file" class="form-control" name="media">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </div>
        </form>
        <x-auth-validation-errors class="mb-4" :errors="$errors" style="color: red" />
    </div>
</div>
@endsection
