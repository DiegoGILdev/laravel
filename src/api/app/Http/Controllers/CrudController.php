<?php

namespace App\Http\Controllers;

use App\Http\Requests\ListRequest;
use App\Http\Requests\RequestInterface;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\CrudServiceInterface;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Http\Request;

class CrudController extends Controller implements CrudControllerInterface
{
    protected RequestInterface $request;
    protected CrudServiceInterface $service;

    /**
     * Display a listing of the resource.
     *
     * @param ListRequest $request
     * @return JSendSuccessResponse
     * @throws BindingResolutionException
     */
    public function index(ListRequest $request): JSendSuccessResponse
    {
        $response = app()->make(JSendSuccessResponse::class);

        $models = $this->service->getAll($request->getPaginator());

        return $response->setData($models);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return JSendSuccessResponse
     * @throws BindingResolutionException
     */
    public function store(): JSendSuccessResponse
    {
        $response = app()->make(JSendSuccessResponse::class);

        $model = $this->service->save($this->request->toArray());

        return $response->setData($model);
    }

    /**
     * Display the specified resource.
     *
     * @param int $modelId
     * @return JSendSuccessResponse
     * @throws BindingResolutionException
     */
    public function show(int $modelId): JSendSuccessResponse
    {
        $response = app()->make(JSendSuccessResponse::class);

        $model = $this->service->get($modelId);

        return $response->setData($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param int $modelId
     * @return JSendSuccessResponse
     * @throws BindingResolutionException
     */
    public function update(Request $request, int $modelId): JSendSuccessResponse
    {
        $response = app()->make(JSendSuccessResponse::class);

        $model = $this->service->update($modelId, $request->toArray());

        return $response->setData($model);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $modelId
     * @return JSendSuccessResponse
     * @throws BindingResolutionException
     */
    public function destroy(int $modelId): JSendSuccessResponse
    {
        $response = app()->make(JSendSuccessResponse::class);

        $result = $this->service->delete($modelId);

        return $response->setData(['deleted' => $result]);
    }
}
