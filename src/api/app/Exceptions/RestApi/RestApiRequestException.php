<?php

namespace App\Exceptions\RestApi;

use Exception;
use Illuminate\Http\JsonResponse;
use Throwable;

class RestApiRequestException extends Exception
{
    public function __construct(
        ?string $message,
        int $code = JsonResponse::HTTP_INTERNAL_SERVER_ERROR,
        Throwable $previous = null
    ) {

        parent::__construct($message ?? '', $code, $previous);
    }
}
