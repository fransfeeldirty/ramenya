@extends('admin.layout.app')

@section('title','Data history')

@section('content')

<div class="container">
    <a href="/history/create" class="btn btn-primary mb-3">Tambah Data</a>

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
                @foreach ( $history as $history )
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $history->judul }}</td>
                    <td>{{ $history->deskripsi }}</td>
                    <td>
                        <img src="{{ asset('storage/' . $history->gambar) }}" class="img-fluid" width="90">
                    </td>
                    <td>
                        <a href="{{ route('history.edit', $history->id) }}" class="btn btn-warning">Edit</a><br></br>
                    <form action="{{ route('history.destroy', $history->id) }}" method="post">
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
