<?php

namespace App\Http\Controllers;

use App\Http\Requests\Bill\StoreRequest;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\BillCrudService;


class BillController extends CrudController implements CrudControllerInterface
{
    public function __construct(BillCrudService $billService)
    {
        $this->service = $billService;
    }

    public function store(JSendSuccessResponse $response): JSendSuccessResponse
    {
        $this->request = app(StoreRequest::class);

        return CrudController::store($response);
    }
}
