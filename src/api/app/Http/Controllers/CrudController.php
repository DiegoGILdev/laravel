<?php

namespace App\Http\Controllers;

use App\Http\Requests\ListRequest;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\CrudServiceInterface;
use Illuminate\Http\Request;

trait CrudController
{
    protected CrudServiceInterface $service;

    /**
     * Display a listing of the resource.
     *
     * @param ListRequest $request
     * @param JSendSuccessResponse $response
     * @return JSendSuccessResponse
     */
    public function index(ListRequest $request, JSendSuccessResponse $response): JSendSuccessResponse
    {
        $models = $this->service->getAll($request->getPaginator());

        return $response->setData($models);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @param JSendSuccessResponse $response
     * @return JSendSuccessResponse
     */
    public function store(Request $request, JSendSuccessResponse $response): JSendSuccessResponse
    {
        $model = $this->service->save($request->toArray());

        return $response->setData($model);
    }

    /**
     * Display the specified resource.
     *
     * @param int $modelId
     * @param JSendSuccessResponse $response
     * @return JSendSuccessResponse
     */
    public function show(int $modelId, JSendSuccessResponse $response): JSendSuccessResponse
    {
        $model = $this->service->get($modelId);

        return $response->setData($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param int $modelId
     * @param JSendSuccessResponse $response
     * @return JSendSuccessResponse
     */
    public function update(Request $request, int $modelId, JSendSuccessResponse $response): JSendSuccessResponse
    {
        $model = $this->service->update($modelId, $request->toArray());

        return $response->setData($model);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $modelId
     * @param JSendSuccessResponse $response
     * @return JSendSuccessResponse
     */
    public function destroy(int $modelId, JSendSuccessResponse $response): JSendSuccessResponse
    {
        $result = $this->service->delete($modelId);

        return $response->setData(['deleted' => $result]);
    }
}
