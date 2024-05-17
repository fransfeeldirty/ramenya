@extends('admin.layout.app')

@section('title','Data Lokasi')

@section('content')

<div class="container">
    <a href="/lokasi" class="btn btn-primary mb-3">Kembali</a>
    <div class="col-md8 offset-md-12">
        <form action="{{ route('lokasi.update', $lokasi->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label for="">Judul</label>
                <input type="text" class="form-control" name="judul" placeholder="Title" value="{{ $lokasi->judul }}">
            </div>
            {{-- @error('title')
            <small style="color:red">{{$message}}</small>
            @enderror --}}
            <div class="form-group">
                <label for="">Lokasi</label>
                <input type="text" class="form-control" name="lokasi" placeholder="Title" value="{{ $lokasi->lokasi }}">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </div>
        </form>
        <x-auth-validation-errors class="mb-4" :errors="$errors" style="color: red" />
    </div>
</div>
@endsection
