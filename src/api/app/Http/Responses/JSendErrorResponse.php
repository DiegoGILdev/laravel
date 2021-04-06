<?php

namespace App\Http\Responses;

use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\App;
use Throwable;


class JSendErrorResponse extends JsonResponse
{
    public function __construct(Throwable $exception = null, $status = JsonResponse::HTTP_INTERNAL_SERVER_ERROR, $headers = [], $options = 0)
    {
        $data = [
            'status' => 'error',
            'message' => $exception->getMessage(),
        ];

        if (App::environment('local')) {
            $data = array_merge($data, [
                'debug' => [
                    'file' => $exception->getFile(),
                    'line' => $exception->getLine(),
                    'exception' => get_class($exception),
                    'trace' => $exception->getTrace(),
                ]
            ]);
        }

        parent::__construct($data, $status, $headers, $options);
    }
}
