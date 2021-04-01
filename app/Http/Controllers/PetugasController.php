<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;

class PetugasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = User::where('hak_akses', 'petugas')->paginate(10);
        $tampil['data'] = $data;

        return view('petugas.index', $tampil);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('petugas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'email' => 'required|email|unique:users',
            'nama' => 'required',
        ]);

        //enkripsi password
        $enkripsi = Hash::make($request->password);
        $request->merge(['password' => $enkripsi]);

        //isi hak akses petugas
        $request->merge(['hak_akses' => 'petugas']);
        $dataUser = User::create($request->all());

        return redirect()->route('petugas.index')->with(
            'success',
            'Data berhasil ditambahkan.'
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($petuga)
    {
        $data = User::findOrFail($petuga);
        return view('petugas.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $petuga)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
        ]);

        $data = User::findOrFail($petuga);
        $data->name = $request->name;
        $data->email = $request->email;

        if ($request->password != '') {
            $enkripsi = Hash::make($request->password);
            $data->password = $enkripsi;
        }
        $data->save();
        return redirect()->route("petugas.index")->with(
            "success",
            "Data berhasil diubah."
        );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($petuga)
    {
        $data = User::findOrFail($petuga);
        $data->delete();
    }
}
