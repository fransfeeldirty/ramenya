<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            ['name' => 'Admin', 'email' => 'adminramen@ramenya.id','password' => '$2y$10$7.PUdfgnvM28OdCMY2iWc.8jBsR0xb5pQDc2cwPVFSYJprUQetBPi']
        ]);
    }
}
