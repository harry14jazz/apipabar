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

    public function editRS($id){
        $data = RumahSakit::find($id);
        return view('edit/edit_rs_rujukan', ['data' => $data]);
    }
}
