<?php

namespace App\Http\Requests\Wallet;

use App\Models\ResponseObject;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class CreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            '_account_id' => 'required|integer|exists:users,id',
            '_name' => 'required',
            '_wallet_type_code' => 'required|exists:wallet_types,_code',
            '_initial_amount' => 'required',
            '_exclude' => 'required'
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        $errors = $validator->errors()->all();
        $response = new ResponseObject(422, "Validation Failed", ['errors' => $errors]);

        throw new HttpResponseException(response()->json($response->toArray()));
    }
}
