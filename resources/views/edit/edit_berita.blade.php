@extends ('template.header')

    <div class="container-fluid">
      <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link" href="{{ route ('home admin') }}">
                  <span data-feather="home"></span>
                  Dashboard <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route ('data_covid') }}">
                <span data-feather="bar-chart-2"></span>
                  Data Covid-19
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="{{ route ('berita') }}">
                  <span data-feather="file-text"></span>
                  Berita
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route ('rs_rujukan') }}">
                  <span data-feather="plus-square"></span>
                  RS Rujukan
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route ('tentang_kami') }}">
                  <span data-feather="alert-circle"></span>
                  Tentang Kami
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route ('akun') }}">
                  <span data-feather="user"></span>
                  Akun
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Edit Berita Covid</h1>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route ('home admin') }}">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route ('berita') }}">Berita</a></li>
                    <li class="breadcrumb-item active">Edit Berita Covid</li>
                </ol>
            </div>
          </div>

        <!-- Main content -->
        <section class="content">
        <div class="row">
            <div class="col-12">
            <div class="card">
            <div class="card-body">
            <form action="/admin/berita/edit_berita/{{ $data->id }}/simpan" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}

            <input type="hidden" name="id" id="id">
                
            <div class="form-row">
            <div class="form-group col-md-6">

                <div class="form-group mb-3">
                <label for="judul">Judul:</label>
                <textarea class="form-control" id="judul" rows="2" name="judul" placeholder="Judul" required>{{ $data->judul }}</textarea>
                </div>

                <div class="form-group mb-3">
                <label for="isi">Isi:</label>
                <textarea class="form-control" id="isi" rows="14" name="isi" placeholder="Isi" required>{{ $data->isi }}</textarea>
                </div>

            </div>

            <div class="form-group col-md-6">

                <div class="form-group mb-3" style="border: 1px solid rgba(204, 206, 207, 0.8); border-radius:5px; padding:5px">
                    <label for="gambar">File Gambar <i style="color:green;">( {{ $data->gambar }} )</i> </label>
                    <input type="file" class="form-control" name="gambar" id="gambar" value="{{ $data->gambar }}">
                </div>
                @if($errors->has('gambar'))
                  <strong class="text-danger">File Yang Anda Upload Bukan Gambar/Foto</strong>
                @endif

                <div class="form-group mb-3">
                    <label for="sumber">Sumber:</label>
                    <input type="text" class="form-control" id="sumber" name="sumber" placeholder="Sumber" value="{{ $data->sumber }}" required>
                </div>

                <div class="form-group mb-3">
                    <label for="tanggal_post">Tanggal Post:</label>
                    <input type="date" class="form-control" name="tanggal_post" id="tanggal_post" style="border: 1px solid rgba(204, 206, 207, 0.8); border-radius:5px; padding:6px" value="{{ $data->tanggal_post }}" required>
                </div>

            </div>

            </div>

            </div>
                <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Edit Data</button>
            </div>
            </form>
            </div>
            </div>
        </div>
        </div>
        </section>

        </main>
      </div>
    </div>

@extends ('template.footer')