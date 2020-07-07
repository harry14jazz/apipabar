@extends ('template.header')

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="{{ route ('home admin') }}">
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
            <h1 class="h2">Dashboard</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Share</button>
                <button class="btn btn-sm btn-outline-secondary">Export</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
              </button>
            </div>
          </div>
        </main>
      </div>
    </div>

@extends ('template.footer')