<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Company Profile</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* CSS untuk logo */
    .logo {
      max-height: 50px;
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <!-- Logo -->
      <a class="navbar-brand" href="#">
        <img src="{{ asset('img/logo.jpg')r  }}" alt="Logo" class="logo">
      </a>
      <!-- Tombol Toggler -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Menu -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Products</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
          <!-- Menu Branch -->
          <li class="nav-item">
            <a class="nav-link" href="#">Branch</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Carousel -->
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="{{ asset('img/gambar1.jpg')}}" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="{{ asset('img/gambar2.jpg')}}" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="{{ asset('img/gambar3.jpeg')}}" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <!-- Menu Produk -->
  <div class="container my-5">
    <h2>Our Products</h2>
    <div class="row mt-4">
      <div class="col-md-4">
        <div class="card">
          <img src="https://via.placeholder.com/300" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Product 1</h5>
            <p class="card-text">Description of product 1.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="https://via.placeholder.com/300" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Product 2</h5>
            <p class="card-text">Description of product 2.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="https://via.placeholder.com/300" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Product 3</h5>
            <p class="card-text">Description of product 3.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Alamat Outlet -->
  <div class="container-fluid bg-dark text-white py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h3>Main Office</h3>
          <p>123 Company Street</p>
          <p>City, Country</p>
        </div>
        <div class="col-md-4">
          <h3>Branch Office 1</h3>
          <p>456 Branch Street</p>
          <p>City, Country</p>
        </div>
        <div class="col-md-4">
          <h3>Branch Office 2</h3>
          <p>789 Branch Street</p>
          <p>City, Country</p>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
