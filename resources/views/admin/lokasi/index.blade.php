@extends('admin.layout.app')

@section('title','Data Lokasi')

@section('content')

<div class="container">
    <a href="/lokasi/create" class="btn btn-primary mb-3">Tambah Data</a>

    @if($message = Session::get('message'))
    <div class="alert alert-success">
        <strong>Succes</strong>
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
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ( $lokasi as $lokasi )
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $lokasi->judul }}</td>
                    <td>{{ $lokasi->lokasi }}</td>
                    <td>
                        <a href="{{ route('lokasi.edit', $lokasi->id) }}" class="btn btn-warning">Edit</a><br></br>
                    <form action="{{ route('lokasi.destroy', $lokasi->id) }}" method="post">
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
