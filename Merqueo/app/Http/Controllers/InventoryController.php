<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Inventory;
class InventoryController extends Controller
{
    public function add(Request $request){
        //$task = Tasks::create($request->all());
        //dd($request);
        //$inv = Inventory::create($request->all());
        /*$request2 = array();*/
        foreach($request['inventory'] as $inv){
            Inventory::create($inv);
        }

        
        return $request;
    }
}
