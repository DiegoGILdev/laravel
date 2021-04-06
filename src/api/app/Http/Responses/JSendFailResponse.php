<?php

namespace App\Http\Responses;

use Illuminate\Http\JsonResponse;


class JSendFailResponse extends JsonResponse
{
    public function __construct($data = null, $status = JsonResponse::HTTP_BAD_REQUEST, $headers = [], $options = 0)
    {
        $data = [
            'status' => 'fail',
            'data' => $data,
        ];

        parent::__construct($data, $status, $headers, $options);
    }
}
