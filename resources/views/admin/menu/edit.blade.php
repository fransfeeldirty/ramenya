@extends('admin.layout.app')

@section('title','Data Menu')

@section('content')

<div class="container">
    <a href="/menu" class="btn btn-primary mb-3">Kembali</a>
    <div class="col-md8 offset-md-12">
        <form action="{{ route('menu.update', $menu->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label for="">Judul</label>
                <input type="text" class="form-control" name="judul" placeholder="Title" value="{{ $menu->judul }}">
            </div>
            {{-- @error('title')
            <small style="color:red">{{$message}}</small>
            @enderror --}}
            <div class="form-group">
                <label for="">Deskripsi</label>
                <textarea name="deskripsi" id="" cols="30" class="form-control" rows="10" placeholder="Description">{{ $menu->deskripsi }}</textarea>
            </div>
            </div>
            <img src="{{ asset('storage/' . $menu->gambar) }}" class="img-fluid" >
            <div class="form-group">
                <label for="gambar">Gambar</label>
                <input type="file" class="form-control" name="gambar">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </div>
        </form>
        <x-auth-validation-errors class="mb-4" :errors="$errors" style="color: red" />
    </div>
</div>
@endsection
