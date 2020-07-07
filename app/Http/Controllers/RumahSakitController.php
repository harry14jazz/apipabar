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
}
