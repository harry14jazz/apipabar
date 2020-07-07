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
}
