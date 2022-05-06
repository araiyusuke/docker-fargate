<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class YusukeController extends Controller
{
    public function index () 
    {
        $hello = 'Hello,World!';
        return view('yusuke.index', compact('hello'));
    }
}
