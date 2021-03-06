<?php

namespace App\Http\Controllers;

use App\Http\Requests\Bill\StoreRequest;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\BillService;


class BillController extends CrudController implements CrudControllerInterface
{
    public function __construct(BillService $billService)
    {
        $this->service = $billService;
    }

    public function store(): JSendSuccessResponse
    {
        $this->request = app(StoreRequest::class);

        return CrudController::store();
    }
}
