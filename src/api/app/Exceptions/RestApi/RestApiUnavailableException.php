<?php

namespace App\Exceptions\RestApi;

use Exception;
use Illuminate\Http\JsonResponse;

class RestApiUnavailableException extends Exception
{
    public function __construct()
    {
        parent::__construct('Service unavailable.', JsonResponse::HTTP_SERVICE_UNAVAILABLE, $previous);
    }
}
