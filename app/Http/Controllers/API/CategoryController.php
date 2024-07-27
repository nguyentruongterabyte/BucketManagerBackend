<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\ResponseObject;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();

        if ($categories->isEmpty()) {
            $response = new ResponseObject(404, 'No content');
            return response()->json($response->toArray(), 404);
        }

        $response = new ResponseObject(200, 'Success', $categories);
        return response()->json($response->toArray(), 200);
    }
}
