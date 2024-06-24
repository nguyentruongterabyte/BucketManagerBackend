<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Currency;
use App\Models\ResponseObject;
use Illuminate\Http\Request;

class CurrencyController extends Controller
{
    public function index()
    {
        $currencies = Currency::all();

        if ($currencies->isEmpty()) {
            $response = new ResponseObject(404, 'No content');
            return response()->json($response->toArray(), 200);
        }

        $response = new ResponseObject(200, 'Success', $currencies);
        return response()->json($response->toArray(), 200);
    }

    public function store(Request $request)
    {
        $currency = Currency::create($request->all());
        $response = new ResponseObject(201, 'Created', $currency);
        return response()->json($response->toArray(), 201);
    }

    public function show($id)
    {
        return response()->json(['message' => "This is the show method for ID: {$id}"]);
    }

    public function update(Request $request, $id)
    {
        return response()->json(['message' => "This is the update method for ID: {$id}"]);
    }

    public function destroy($id)
    {
        return response()->json(['message' => "This is the destroy method for ID: {$id}"]);
    }
}
