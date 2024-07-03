<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Example;
use App\Models\ResponseObject;
use Illuminate\Http\Request;

class ExampleController extends Controller
{
    public function index()
    {
        $examples = Example::all();

        if ($examples->isEmpty()) {
            $response = new ResponseObject(404, 'No content');
            return response()->json($response->toArray(), 404);
        }

        $response = new ResponseObject(200, 'Success', $examples);
        return response()->json($response->toArray(), 200);
    }

    public function store(Request $request)
    {
        $example = Example::create($request->all());
        return response()->json($example, 201);
    }

    public function show($id)
    {
        $example = Example::findOrFail($id);
        return response()->json($example);
    }

    public function update(Request $request, $id)
    {
        $example = Example::findOrFail($id);
        $example->update($request->all());
        return response()->json($example);
    }

    public function destroy($id)
    {
        Example::findOrFail($id)->delete();
        return response()->json(null, 204);
    }
}
