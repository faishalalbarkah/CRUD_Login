<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Data_penduduk;

class DataController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function Data() {
       $data_penduduk = Data_Penduduk::all();
       return response()->json($data_penduduk);
    }

    public function create(Request $request)
    {
        $this->validate($request, [
            'no_kk' => 'required|integer',
            'nik' => 'required|integer',
            'nama_lengkap' => 'required|string',
            'id_stat_hbkel' => 'required|integer',
            'no_rt' => 'required|integer',
        ]);

        $data = $request->all();
        $data_penduduk = Data_penduduk::create($data);

        return response()->json($data_penduduk);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'no_kk' => 'integer',
            'nik' => 'integer',
            'nama_lengkap' => 'string',
            'id_stat_hbkel' => 'integer',
            'no_rt' => 'integer'
        ]);

        $data_penduduk = Data_penduduk::find($id);

        if(!$data_penduduk) {
            return response()->json(['message' => 'Data not found'], 404);
        }

        $data = $request->all();

        $data_penduduk->fill($data);

        $data_penduduk->save();
        return response()->json($data_penduduk);
    }

    public function destroy($id)
    {
        $data_penduduk = Data_penduduk::find($id);

        if(!$data_penduduk) {
            return response()->json(['message' => 'Data not found'], 404);
        }

        $data_penduduk->delete();
        return response()->json(['message' => 'Data Deleted!']);
    }
}
