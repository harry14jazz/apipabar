@extends ('template.header')

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
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
                <a class="nav-link active" href="{{ route ('akun') }}">
                  <span data-feather="user"></span>
                  Akun
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Akun Anda</h1>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route ('home admin') }}">Home</a></li>
                    <li class="breadcrumb-item active">Akun Anda</li>
                </ol>
            </div>
          </div>

          @if (session('status'))
            <div class="alert alert-danger">
              {{ session('status') }}!
            </div>
          @endif

        <div class="row">
            <div class="col-sm-3 col-md-3">
            @foreach($data as $datauser)
            <p>Photo:</p>
            <img src="{!! asset('../img/logo/covid.jpg') !!}" width="250" height="200">
            </div>

            <div class="col-sm-3 col-md-3">
            <div class="mb-2">
                <b>Name/Username: </b> <span>{{ $datauser->name }}</span>
            </div>

            <div class="mb-3">
            <b>Email: </b> <span>{{ $datauser->email }}</span>
            </div>
            @endforeach

            <a href="#" class="btn btn-warning" title="Edit"><span data-feather="edit"></span></a>
            </div>	
        </div>
        </main>
      </div>
    </div>

@extends ('template.footer')