@extends('admin.layout.app')

@section('title','Data Slider')

@section('content')

<div class="container">
    <a href="/slider/create" class="btn btn-primary mb-3">Tambah Data</a>

    @if($message = Session::get('message'))
    <div class="alert alert-success">
        <strong>Succes</strong>
        <p>{{ $message }}</p>
    </div>
    @endif

    @if($message = Session::get('danger'))
    <div class="alert alert-danger">
        <strong>Dilarang</strong>
        <p>{{ $message }}</p>
    </div>
    @endif

    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Judul</th>
                    <th>Deskripsi</th>
                    <th>Gambar</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ( $slider as $slider )
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $slider->judul }}</td>
                    <td>{{ $slider->deskripsi }}</td>
                    <td>
                        {{-- <img src="{{ asset('storage/' . $slider->gambar) }}" class="img-fluid" width="90"> --}}
                        <video width="320" height="240" controls>
                            <source src="{{ asset('storage/'. $slider->media) }}" type="video/mp4">
                        </video>
                    </td>
                    <td>
                        <a href="{{ route('slider.edit', $slider->id) }}" class="btn btn-warning">Edit</a><br></br>
                    <form action="{{ route('slider.destroy', $slider->id) }}" method="post">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Hapus</button>
                    </form>
                    </td>


                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
