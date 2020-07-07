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
            <h1 class="h2">Rumah Sakit Rujukan Covid</h1>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route ('home admin') }}">Home</a></li>
                    <li class="breadcrumb-item active">Data Rumah Sakit Rujukan Covid</li>
                </ol>
            </div>
          </div>

        <!-- Main content -->
        <section class="content">
            <div class="row">
            <div class="col-12">
                <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Rumah Sakit Rujukan Covid</h3>

                    @if (session('status'))
                    <div class="alert alert-danger">
                      {{ session('status') }}!
                    </div>
                    @endif

                    <a href="/admin/rs_rujukan/tambah_rs_rujukan" class="btn btn-success tombolTambahDataRS" title="Tambah">
                    <span data-feather="plus-square"></span> Tambah Rumah Sakit Rujukan Covid
                    </a>
                    
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                <table id="table2" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Nama RS</th>
                  <th>Telp</th>
                  <th>Email</th>
                  <th>Lokasi</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                <?php $i = 0; ?>
                @foreach($data as $datars)
                <tr>
                  <td><?= $i+1; ?></td>
                  <td>{{ $datars->nama_rs }}</td>
                  <td>{{ $datars->telp }}</td>
                  <td>{{ $datars->email }}</td>
                  <td>{{ $datars->lokasi }}</td>
                  <td class="text-center">
                    <a class="btn btn-warning" href="/admin/rs_rujukan/edit_rs_rujukan/{{ $datars->id }}" role="button" title="Edit">
                    <span data-feather="edit"></span>
                    </a>
                    <a class="btn btn-danger" href="#" role="button" title="Hapus" data-toggle="modal" data-target="#formModalDelete">
                    <span data-feather="trash-2"></span>
                    </a>
                  </td>
                </tr>
                <?php $i++; ?>
                @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>No</th>
                  <th>Nama RS</th>
                  <th>Telp</th>
                  <th>Email</th>
                  <th>Lokasi</th>
                  <th>Aksi</th>
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

<!-- The Modal -->
<div class="modal modal-danger fade" id="formModalDelete" role="dialog" aria-labelledby="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
                
    <!-- Modal Header -->
    <div class="modal-header">
      <h5 class="modal-title text-center" id="myModal">Hapus Data RS Rujukan</h4>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span data-feather="x"><span>&times;</span></button>
    </div>
        <form action="#" method="post">
        <!-- Modal body -->
        <div class="modal-body">
          <p class="text-center">
            Apakah Anda Yakin ?
          </p>
        </div>
                  
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-dismiss="modal">No</button>
        <input type="submit" class="btn btn-danger" name="submit" value="Yes">
        </form>
        </div>
    </div>
  </div>
</div>

@extends ('template.footer')