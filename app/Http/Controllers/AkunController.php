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

    public function editAkun($id){
        $data = User::find($id);
        return view('edit/edit_User',['data' => $data]);
    }

    public function editAkunSimpan(Request $request, $id){
        $user = user::find($id);
        
        $user->name = $request->nama;
        $user->email = $request->email;
        $pass = $request->password;

        if($pass != NULL){
            $user->password = bcrypt($request->password);
        } else {
            $user->password = $request->passwordLama;
        }

        $user->save();

        return redirect()->route('akun')->with('status', 'Data Berhasil Diedit');
    }
}
