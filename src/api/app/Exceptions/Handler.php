<?php

namespace App\Exceptions;

use App\Http\Responses\JSendErrorResponse;
use App\Http\Responses\JSendFailResponse;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;
use Throwable;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;


class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param Request $request
     * @param Throwable $exception
     *
     * @return JSendErrorResponse|JSendFailResponse|null
     * @throws Throwable
     */
    public function render($request, Throwable $exception)
    {
        $response = null;

        if (is_a($exception, TokenExpiredException::class) ||
            is_a($exception, AuthenticationException::class) ||
            is_a($exception, UnauthorizedHttpException::class)
        ){
            $response = new JSendFailResponse($exception->getMessage(), JsonResponse::HTTP_UNAUTHORIZED);
        }
        elseif (is_a($exception, NotFoundException::class)) {
            $response = new JSendFailResponse($exception->getMessage(), JsonResponse::HTTP_NOT_FOUND);
        }
        elseif (is_a($exception, Throwable::class)) {
            $response = new JSendErrorResponse($exception);
        }

        return $response;
    }
}
