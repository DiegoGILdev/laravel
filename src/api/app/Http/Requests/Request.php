<?php

namespace App\Http\Requests;

use App\Helpers\Sorting;
use App\Models\Model;
use Illuminate\Foundation\Http\FormRequest;


class Request extends FormRequest
{
    protected const REQUIRED = 'required';
    protected const NULLABLE = 'nullable';
    protected const INTEGER = 'integer';
    protected const STRING = 'string';

    public const PARAM_LIMIT = 'limit';
    public const PARAM_SORT_COLUMN = 'column';
    public const PARAM_SORT_DIRECTION = 'direction';
}
