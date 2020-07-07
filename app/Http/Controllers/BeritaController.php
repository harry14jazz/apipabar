<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Berita;

class BeritaController extends Controller
{
    public function index(){
        $data = Berita::limit(5)->orderBy('id','DESC')->get();
        return $data;
    }

    public function detail($id_berita){
        $data = Berita::find($id_berita);
        return $data;
    }

    public function listBerita(){
        $data = Berita::orderBy('id','DESC')->get();
        return view('listBerita',['data' => $data]);
    }
}
