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

    public function tambahBerita(){
        return view('tambah/tambah_berita');
    }

    public function tambahBeritaSimpan(Request $request){
        $this->validate($request,[
            'gambar' => 'image|mimes:jpeg,png,jpg',
        ]);

        $berita = new Berita;
        
        $berita->judul = $request->judul;
        $berita->isi = $request->isi;

        if($request->hasFile('gambar')){
            $file = $request->file('gambar');
            $file->move(public_path().'/img/berita', $request->judul.$file->getClientOriginalName());
            $berita->gambar = $request->judul.$file->getClientOriginalName();
        }

        $berita->sumber = $request->sumber;
        $berita->tanggal_post = $request->tanggal_post;

        $berita->save();

        return redirect()->route('berita')->with('status', 'Data Berhasil Ditambahkan');
    }

    public function editBerita($id){
        $data = Berita::find($id);
        return view('edit/edit_berita', ['data' => $data]);
    }

    public function editBeritaSimpan(Request $request, $id){
        $this->validate($request,[
            'gambar' => 'image|mimes:jpeg,png,jpg',
        ]);
        
        $berita = Berita::find($id);

        $berita->judul = $request->judul;
        $berita->isi = $request->isi;

        if($request->hasFile('gambar')){
            $file = $request->file('gambar');
            $file->move(public_path().'/img/berita', $request->judul.$file->getClientOriginalName());
            $berita->gambar = $request->judul.$file->getClientOriginalName();
        }

        $berita->sumber = $request->sumber;
        $berita->tanggal_post = $request->tanggal_post;

        $berita->save();

        return redirect()->route('berita')->with('status', 'Data Berhasil Diedit');
    }

    public function hapusBerita($id){
        $berita = Berita::find($id);
        $berita->delete();

        return redirect()->route('berita')->with('status', 'Data Berhasil Dihapus');
    }
}
