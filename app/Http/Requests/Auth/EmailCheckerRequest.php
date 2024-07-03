<?php

namespace App\Http\Requests\Auth;

use App\Models\ResponseObject;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class EmailCheckerRequest extends FormRequest
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
            '_email' => 'required|string|email|max:255|unique:users'
        ];
    }

    public function failedValidation(Validator $validator) {
        $errors = $validator->errors()->all();
        $response = new ResponseObject(422, "Validation Failed", $errors);

        throw new HttpResponseException(response()->json($response->toArray()));
    }
}
