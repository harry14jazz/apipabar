<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\RumahSakit;

class RumahSakitController extends Controller
{
    public function index(){
        $data = RumahSakit::all();
        return $data;
    }

    public function listRS(){
        $data = RumahSakit::all();
        return view('listRS',['data' => $data]);
    }

    public function tambahRS(){
        return view('tambah/tambah_rs_rujukan');
    }

    public function tambahRSSimpan(Request $request){
        $rs = new RumahSakit;
        
        $rs->nama_rs = $request->nama_rs;
        $rs->telp = $request->telp;
        $rs->email = $request->email;
        $rs->gambar = 'rs.png';
        $rs->lokasi = $request->lokasi;

        $rs->save();

        return redirect()->route('rs_rujukan')->with('status', 'Data Berhasil Ditambahkan');
    }

    public function editRS($id){
        $data = RumahSakit::find($id);
        return view('edit/edit_rs_rujukan', ['data' => $data]);
    }

    public function editRSSimpan(Request $request, $id){
        $rs = new RumahSakit;
        
        $rs->nama_rs = $request->nama_rs;
        $rs->telp = $request->telp;
        $rs->email = $request->email;
        $rs->gambar = 'rs.png';
        $rs->lokasi = $request->lokasi;

        $rs->save();

        return redirect()->route('rs_rujukan')->with('status', 'Data Berhasil Diedit');
    }

    public function hapusRS($id){
        $rs = RumahSakit::find($id);
        $rs->delete();

        return redirect()->route('rs_rujukan')->with('status', 'Data Berhasil Dihapus');
    }
}
