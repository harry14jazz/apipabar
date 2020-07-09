<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tentang;

class TentangController extends Controller
{
    public function index(){
        $data = Tentang::all();
        return $data;
    }

    public function listTentang(){
        $data = Tentang::all();
        return view('listTentang',['data' => $data]);
    }

    public function editTentang($id){
        $data = Tentang::find($id);
        return view('edit/edit_tentang',['data' => $data]);
    }

    public function editTentangSimpan(Request $request, $id){
        $tentang = Tentang::find($id);

        $tentang->biodata = $request->biodata;
        $tentang->nilai = $request->nilai;

        $tentang->save();

        return redirect()->route('tentang_kami')->with('status', 'Data Berhasil Diedit');
    }
}
