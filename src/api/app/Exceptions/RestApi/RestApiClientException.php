<?php

namespace App\Exceptions\RestApi;

use Exception;
use Illuminate\Http\JsonResponse;
use Throwable;

class RestApiClientException extends Exception
{
    public function __construct(
        ?string $message,
        int $code = JsonResponse::HTTP_BAD_REQUEST,
        Throwable $previous = null
    ) {

        parent::__construct($message ?? '', $code, $previous);
    }
}
