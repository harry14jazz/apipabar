<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataCovid;

class DataCovidController extends Controller
{
    public function index(){
        $data = DataCovid::all();
        return $data;
    }

    public function listDataCovid(){
        $data = DataCovid::all();
        return view('listDataCovid',['data' => $data]);
    }
}
