<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class AkunController extends Controller
{
    public function index(){
        $data = User::all();
        return view('profileUser',['data' => $data]);
    }
}
