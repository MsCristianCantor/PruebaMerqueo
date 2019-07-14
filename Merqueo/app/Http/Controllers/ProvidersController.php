<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Providers;
use App\Products;
use Illuminate\Support\Facades\DB;

class ProvidersController extends Controller
{
    public function add(Request $request){
        //$task = Tasks::create($request->all());
        //dd($request);
        //$inv = Inventory::create($request->all());
        /*$request2 = array();*/

        $con = 0;

        foreach($request['providers'] as $provider){

            $datetime = date("Y-m-d H:i:s");

            $id = DB::table('providers')->insertGetId(
                ['name' => $provider['name'],'created_at' => $datetime, 'updated_at' => $datetime]
            );

            foreach($provider['products'] as $provider_product){
                $product = Products::find($provider_product['productId']);

                if(!empty($product)){
                    DB::table('product_provider')->insert(
                        ['product_id' => $provider_product['productId'], 'provider_id' => $id,'created_at' => $datetime, 'updated_at' => $datetime]
                    );
                }
            }
            $con ++;
        }

        if($con > 2)
        {
            $res[] = 'Se crearon los registros de forma correcta.';
        }
        else
        {
            $res[] = 'Se creo el registro de forma correcta.';
        }

        return $res;
    }
}
