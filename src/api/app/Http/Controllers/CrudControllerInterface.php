<?php

namespace App\Http\Controllers;

use App\Http\Requests\ListRequest;
use App\Http\Requests\RequestInterface;
use App\Http\Responses\JSendSuccessResponse;
use Illuminate\Http\Request;


interface CrudControllerInterface
{
    public function index(ListRequest $request): JSendSuccessResponse;

    public function store(): JSendSuccessResponse;

    public function show(int $modelId): JSendSuccessResponse;

    public function update(Request $request, int $modelId): JSendSuccessResponse;

    public function destroy(int $modelId): JSendSuccessResponse;
}
