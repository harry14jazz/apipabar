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
}
