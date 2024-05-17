@extends('admin.layout.app')

@section('title','Data Menu')

@section('content')

<div class="container">
    <a href="/menu/create" class="btn btn-primary mb-3">Tambah Data</a>

    @if($message = Session::get('message'))
    <div class="alert alert-success">
        <strong>Success</strong>
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
                @foreach($menu as $index => $item)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $item->judul }}</td>
                    <td>{{ $item->deskripsi }}</td>
                    <td>
                        <img src="{{ asset('storage/' . $item->gambar) }}" class="img-fluid" width="90">
                    </td>
                    <td>
                        <a href="{{ route('menu.edit', $item->id) }}" class="btn btn-warning">Edit</a><br></br>
                        <form action="{{ route('menu.destroy', $item->id) }}" method="post" style="display:inline;">
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
