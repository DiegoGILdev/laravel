<?php

namespace App\Http\Controllers;

use App\Http\Requests\EditCount\ListRequest;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\EditCountService;
use Illuminate\Contracts\Container\BindingResolutionException;


class EditCountController extends CrudController
{
    /**
     * @param EditCountService $service
     */
    public function __construct(EditCountService $service)
    {
        $this->service = $service;
    }

    /**
     * @return JSendSuccessResponse
     * @throws BindingResolutionException
     */
    public function list(): JSendSuccessResponse
    {
        $request = app()->make(ListRequest::class);
        $response = app()->make(JSendSuccessResponse::class);

        $models = $this->service->list(
            $request->get('username'),
            $request->get('title'),
            $request->get('page_size')
        );

        return $response->setData($models);
    }
}
