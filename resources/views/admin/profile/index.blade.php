@extends('admin.layout.app')

@section('title','Data Profile')

@section('content')

<div class="container">

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
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Gambar</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ( $profile as $profile )
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $profile->name }}</td>
                    <td>{{ $profile->email }}</td>
                    <td>{{ $profile->password }}</td>
                    <td>
                        <img src="{{ asset('storage/' . $profile->gambar) }}" class="img-fluid" width="90">
                    </td>
                    <td>
                        <a href="{{ route('profile.edit', $profile->id) }}" class="btn btn-warning">Edit</a><br></br>
                    </td>


                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
