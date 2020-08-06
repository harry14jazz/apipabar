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
                <a class="nav-link" href="{{ route ('berita') }}">
                  <span data-feather="file-text"></span>
                  Berita
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="{{ route ('rs_rujukan') }}">
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
            <h1 class="h2">Tambah Rumah Sakit Rujukan</h1>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route ('home admin') }}">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route ('rs_rujukan') }}">RS Rujukan</a></li>
                    <li class="breadcrumb-item active">Tambah Rumah Sakit Rujukan</li>
                </ol>
            </div>
          </div>

        <!-- Main content -->
        <section class="content">
        <div class="row">
            <div class="col-12">
            <div class="card">
            <div class="card-body">
            <form action="/admin/rs_rujukan/tambah_rs_rujukan/simpan" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}

            <input type="hidden" name="id" id="id">
                
            <div class="form-row">
            <div class="form-group col-md-6">

                <div class="form-group mb-3">
                <label for="nama_rs">Nama RS:</label>
                <textarea class="form-control" id="nama_rs" rows="2" name="nama_rs" placeholder="Nama RS" required>{{ old('nama_rs') }}</textarea>
                </div>

                <div class="form-group mb-3">
                <label for="telp">Telp:</label>
                <input type="number" class="form-control" name="telp" id="telp" placeholder="Telp" value="{{ old('telp') }}" required>
                </div>

            </div>

            <div class="form-group col-md-6">

                <div class="form-group mb-3">
                <label for="email">Email:</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="Email" value="{{ old('email') }}" required>
                </div>

                <div class="form-group mb-3">
                <label for="lokasi">Lokasi:</label>
                <textarea class="form-control" id="lokasi" rows="2" name="lokasi" placeholder="Lokasi" value="{{ old('lokasi') }}" required></textarea>
                </div>

            </div>

            </div>

            </div>
                <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Tambah Data</button>
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