<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Role;
use App\User;
use DB;

class RegistrationController extends Controller
{
    public function create ()
    {
        $stop_register = DB::table('settings')->where('name','stop_register')->value('value');
        return view('register', compact('stop_register'));
    }

    public function store (Request $request)
    {
        $this->validate(request(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
        ]);

        //create user
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        //Add role
        $user->roles()->attach(Role::where('name', 'User')->first());

        //login
        auth()->login($user);

        //redirect
        return redirect('/posts');
    }

}
