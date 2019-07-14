<?php

use App\Transporters;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TransporterSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Transporters::create([ 'name' => 'Jose Perez']);
        Transporters::create([ 'name' => 'Monica Lopez']);
        Transporters::create([ 'name' => 'Cristian Ivan']);
    }
}
