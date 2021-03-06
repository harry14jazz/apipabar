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
                <a class="nav-link active" href="{{ route ('data_covid') }}">
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
            <h1 class="h2">Data Covid</h1>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route ('home admin') }}">Home</a></li>
                    <li class="breadcrumb-item active">Data Covid</li>
                </ol>
            </div>
          </div>

        <!-- Main content -->
        <section class="content">
            <div class="row">
            <div class="col-12">
                <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Data Covid</h3>

                    @if (session('status'))
                    <div class="alert alert-success">
                      {{ session('status') }}!
                    </div>
                    @endif

                    <a href="/sync" class="btn btn-success tombolTambahDataCovid" title="sinkronisasi">
                    <span data-feather="refresh-cw"></span> Singkronisasi Data Covid
                    </a>
                    
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                <table id="table2" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Status</th>
                  <th>Total Jumlah</th>
                  <th>Tanggal Update</th>
                  <!-- <th>Aksi</th> -->
                </tr>
                </thead>
                <tbody>
                <?php $i = 0; ?>
                @foreach($data as $datacovid)
                <tr>
                  <td><?= $i+1; ?></td>
                  <td>{{ $datacovid->status }}</td>
                  <td>{{ $datacovid->total_jumlah }}</td>
                  <td>{{ $datacovid->tanggal_update }}</td>
                  <!-- <td class="text-center">
                    <a class="btn btn-warning" href="#" role="button" title="Edit">
                    <span data-feather="edit"></span>
                    </a> -->
                    <!-- <a class="btn btn-danger" href="#" role="button" title="Hapus" data-toggle="modal" data-target="#formModalDelete">
                    <span data-feather="trash-2"></span>
                    </a> -->
                  <!-- </td> -->
                </tr>
                <?php $i++; ?>
                @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>No</th>
                  <th>Status</th>
                  <th>Total Jumlah</th>
                  <th>Tanggal Update</th>
                  <!-- <th>Aksi</th> -->
                </tr>
                </tfoot>
              </table>
                </div>
                <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>

        </main>
      </div>
    </div>

@extends ('template.footer')