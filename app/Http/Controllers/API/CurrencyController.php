<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Currency;
use App\Models\ResponseObject;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CurrencyController extends Controller
{
    public function index()
    {
        $currencies = Currency::all();

        if ($currencies->isEmpty()) {
            $response = new ResponseObject(404, 'No content');
            return response()->json($response->toArray());
        }

        $response = new ResponseObject(200, 'Success', $currencies);
        return response()->json($response->toArray());
    }

    public function store(Request $request)
    {
        $currency = Currency::create($request->all());
        $response = new ResponseObject(201, 'Created', $currency);
        return response()->json($response->toArray(), 201);
    }

    public function show($id)
    {
        $currency = Currency::findOrFail($id);
        $response = new ResponseObject(200, 'Success', $currency);
        return response()->json($response->toArray());
    }

    public function update(Request $request, $id)
    {
        return response()->json(['message' => "This is the update method for ID: {$id}"]);
    }

    public function destroy($id)
    {
        return response()->json(['message' => "This is the destroy method for ID: {$id}"]);
    }

    // data from `app/python/Currency.json`
    public function importFromJson(Request $request) 
    {
        
        $data = $request->json()->all();

        if ($data === null) {
            $response = new ResponseObject(400, 'Invalid JSON format');
            return response()->json($response->toArray(), 400);
        }

        foreach ($data as $item) {
            Currency::create(
                $item
            );
        }

        $response = new ResponseObject(200, 'Data imported successfully');
        return response()->json($response->toArray());
    }

    public function search(Request $request) {
        $searchKey = $request->input('key');

        if (empty($searchKey)) {
            $response = new ResponseObject(422, 'Search key is required');
            return response()->json($response->toArray());
        }

        $currencies = DB::select('CALL SP_SEARCH_CURRENCIES(?)', [$searchKey]);

        $response = new ResponseObject(200, 'Success', $currencies);
        return response()->json($response->toArray());
    }
}
