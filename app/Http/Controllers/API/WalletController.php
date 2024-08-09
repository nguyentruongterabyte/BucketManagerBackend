<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\Wallet\CreateRequest;
use App\Models\ResponseObject;
use App\Models\Transaction;
use App\Models\Wallet;
use Illuminate\Http\Request;

class WalletController extends Controller
{
    public function store(CreateRequest $request) {
        // Validate request
        $request->validated();

        // Create wallet
        $wallet = Wallet::create([
            '_account_id' => $request->_account_id,
            '_name' => $request->_name,
            '_wallet_type_code' => $request->_wallet_type_code,
            '_initial_amount' => $request->_initial_amount,
            '_color' => $request->_color,
            '_amount' => $request->_amount,
            '_icon' => $request->_icon,
            '_exclude' => $request->_exclude
        ]);

        $wallet->load('walletType');
        $wallet->transactions = [];
        $response = new ResponseObject(201, 'Created', $wallet);
        return response()->json($response->toArray(), 201);
    }

    public function update(Request $request, $id, $walletId) {
        $wallet = Wallet::findOrFail($walletId);
        $wallet->update($request->all());
        $wallet->load('walletType');
        $wallet->transactions = Transaction::with(['category', 'wallet', 'fromWallet', 'toWallet'])
            ->where('_wallet_id', $wallet->id)
            ->orWhere('_from_wallet_id', $wallet->id)
            ->get();
        $response = new ResponseObject(200, "update successfully", $wallet);
        return response()->json($response->toArray());
    }
}
