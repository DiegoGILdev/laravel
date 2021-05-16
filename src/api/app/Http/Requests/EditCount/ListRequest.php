<?php

namespace App\Http\Requests\EditCount;

use App\Http\Requests\Request;


class ListRequest extends Request
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
     * @return array
     */
    public function rules()
    {
        return [
            'username' => ['required', 'string'],
            'title' => ['required', 'string'],
            'page_size' => ['required', 'integer', 'max:20'],
        ];
    }
}
