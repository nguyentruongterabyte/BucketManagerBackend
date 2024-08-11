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

            $budget->load(['budgetDetails', "budgetDetails.category"]);

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

    public function update(Request $request, $id, $budgetId) {
        DB::beginTransaction();

        try {
            // Step 1: Find the existing Budget
            $budget = Budget::findOrFail($budgetId);

            // Step 2: Update the Budget
            $budget->update([
                '_name' => $request->_name,
                '_amount' => $request->_amount,
                '_color' => $request->_color,
                '_period' => $request->_period,
                '_account_id' => $request->_account_id,
            ]);

            // Step 3: Handle the Budget Details
            $newBudgetDetails = json_decode($request->budget_details, true);

            // Get the existing budget details
            $existingDetails = BudgetDetail::where('_budget_id', $budget->id)->get();

            // Delete budget details that are not in the new data
            $existingDetails->each(function($detail) use ($newBudgetDetails) {
                $exists = false;
                foreach ($newBudgetDetails as $newDetail) {
                    if ($detail->_category_id == $newDetail['_category_id']) {
                        $exists = true;
                        break;
                    }
                }
                if (!$exists) {
                    $detail->delete();
                }
            });

            // Update or create new budget details
            foreach ($newBudgetDetails as $newDetail) {
                BudgetDetail::updateOrCreate(
                    ['_budget_id' => $budget->id, '_category_id' => $newDetail['_category_id']],
                    ['_budget_id' => $budget->id, '_category_id' => $newDetail['_category_id']]
                );
            }



            DB::commit();

            $budget->load(['budgetDetails', "budgetDetails.category"]);

            // Return success response
            $response = new ResponseObject(200, 'Budget updated successfully', $budget);
            return response()->json($response->toArray());

        } catch (\Exception $e) {
            DB::rollBack();

            // Return error response
            $response = new ResponseObject(500, 'Failed to update budget', null);
            return response()->json($response->toArray(), 500);
        }
    }


     public function destroy($id, $budgetId) {
        Budget::findOrFail($budgetId)->delete();
        $response = new ResponseObject(204, 'Delete successfully');
        return response()->json($response->toArray());
    }
}
