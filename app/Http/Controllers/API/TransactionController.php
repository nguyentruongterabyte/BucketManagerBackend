<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\ResponseObject;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransactionController extends Controller
{
    public function store(Request $request) {    
        $transaction = Transaction::create($request->all());
        $transaction->load('category', 'wallet', 'fromWallet', 'toWallet');
        $response = new ResponseObject(201, "Created", $transaction);
        return response()->json($response->toArray());
    }

    public function update(Request $request, $id, $transactionId) {
        $transaction = Transaction::findOrFail($transactionId);
        $transaction->update($request->all());
        $transaction->load('category', 'wallet', 'fromWallet', 'toWallet');
        $response = new ResponseObject(200, "update successfully", $transaction);
        return response()->json($response->toArray());
    }

    public function getByUserId(Request $request, $userId) {
        $page = $request->input('page');
        $amount = $request->input('amount');
        if (empty($page)) {
           $response = new ResponseObject(422, 'page is required');
            return response()->json($response->toArray()); 
        }

        if (empty($amount)) {
           $response = new ResponseObject(422, 'amount is required');
            return response()->json($response->toArray()); 
        }

        $transactions = DB::select('CALL SP_GET_TRANSACTIONS(?, ?, ?)', [$userId, $page, $amount]);

        // Convert the result to a collection of Transaction models
        $transactionModels = Transaction::hydrate($transactions);

        // Load the category relationship for each transaction 
        $transactionModels->load('category', 'wallet', 'wallet.walletType', 'fromWallet', 'toWallet');

        $response = new ResponseObject(200, 'Success', $transactionModels);
        return response()->json($response->toArray());
    }
}
