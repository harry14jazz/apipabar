<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class AuthController extends Controller
{
    public function getlogin(){
        // $user = new User;

        // $user->name = 'nursalli';
        // $user->email = 'shallimuhammad@gmail.com';
        // $user->password = bcrypt('1234');
        // $user->save();

    	return view('/login');
    }

    public function postlogin(Request $request){
    	if(auth()->attempt(['name' => $request->username, 'password' => $request->password])){	
            return redirect()->route('home admin');
    	}

        return redirect()->back()->with('status', 'Wrong Username or Password');
    }

    public function logout(){

    	auth()->logout();
    	return redirect()->route('home');
    }
}
