<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Budget;
use App\Models\BudgetDetail;
use App\Models\ResponseObject;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BudgetController extends Controller
{
    public function store(Request $request) {
        DB::beginTransaction();
        try {
            // Step 1: Save the Budget
            $budget = Budget::create([
                '_name' => $request->_name,
                '_amount' => $request->_amount,
                '_color' => $request->_color,
                '_period' => $request->_period,
                '_account_id' => $request->_account_id,
                '_start_date' => $request->_start_date,
                '_end_date' => $request->_end_date,
            ]);

            // Step 2: Get the Budget ID and save Budget Details
            $budget_details = json_decode($request->budget_details, true);

            foreach ($budget_details as $detail) {
                BudgetDetail::create([
                    '_budget_id' => $budget->id,
                    '_category_id' => $detail['_category_id'],
                ]);
            }

            DB::commit();
            
            // success
            $response = new ResponseObject(201, 'Created', $budget);
            return response()->json($response->toArray());
        } catch (\Exception $e) {
            DB::rollBack();

            // Return error response
            $response = new ResponseObject(500, 'Failed to create budget', null);
            return response()->json($response->toArray(), 500);
        }
    
        
    }
}
