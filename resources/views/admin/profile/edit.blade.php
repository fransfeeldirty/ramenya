@extends('admin.layout.app')

@section('title','Data Profile')

@section('content')



<div class="container">
    <a href="/profile" class="btn btn-primary mb-3">Kembali</a>
    <div class="col-md8 offset-md-12">
        <form action="{{ route('profile.update', $profile->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label for="">Name</label>
                <input type="text" class="form-control" name="name" placeholder="Title" value="{{ $profile->name }}">
            </div>
            {{-- @error('title')
            <small style="color:red">{{$message}}</small>
            @enderror --}}
            <div class="form-group">
                <label for="">email</label>
                <textarea name="email" id="" cols="30" class="form-control" rows="10" placeholder="Description">{{ $profile->email }}</textarea>
            </div>
            <div class="form-group">
                <label for="">Password</label>
                <textarea name="password" id="" cols="30" class="form-control" rows="10" placeholder="Description">{{ $profile->password }}</textarea>
            </div>
            <img src="{{ asset('storage/' . $profile->gambar) }}" class="img-fluid" >
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
