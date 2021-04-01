<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Spp;

class SppController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Spp::paginate(10);
        $tampil['data'] = $data;

        return view('spp.index', $tampil);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('spp.create');
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
            'tahun' => 'required|numeric|digits:4',
            'nominal' => 'required|numeric|'
        ]);

        $data = Spp::create($request->all());
        return redirect()->route('spp.index', $data)->with(
            'success',
            'Data berhasil disimpan.'
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
    public function edit($spp)
    {
        $data = Spp::findOrFail($spp);
        return view('spp.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $spp)
    {
        $this->validate($request, [
            'tahun' => 'required|numeric|digits:4',
            'nominal' => 'required|numeric|'
        ]);

        $data = Spp::findOrFail($spp);
        $data->tahun = $request->tahun;
        $data->nominal = $request->nominal;
        $data->save();

        return redirect()->route('spp.index')->with(
            'success',
            'Data berhasil diupdate'
        );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($spp)
    {
        $data = Spp::findOrFail($spp);
        $data->delete();
    }
}
