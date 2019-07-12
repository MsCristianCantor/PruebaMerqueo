<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;

class ProductsController extends Controller
{
    public function getAll(){
        $products = Products::all();
        return $products;
    }
}
