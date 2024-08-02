<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\ResponseObject;
use App\Models\WalletType;

class WalletTypeController extends Controller
{
    //
    public function index() {
        $walletTypes = WalletType::all();

        $response = new ResponseObject(200, 'Success', $walletTypes);
        return response()->json($response->toArray());
    }
}
