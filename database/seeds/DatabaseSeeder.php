<?php

use Illuminate\Database\Seeder;
use App\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        // $this->call(UserSeeder::class);
        User::create([
            "name" => "Nasya",
            "email" => "nasya@gmail.com",
            "hak_akses" => "petugas",
            "password" => Hash::make('petugas')
        ]);
    }
}
