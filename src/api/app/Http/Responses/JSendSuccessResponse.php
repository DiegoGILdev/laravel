<?php

namespace App\Http\Responses;

use Illuminate\Http\JsonResponse;


class JSendSuccessResponse extends JsonResponse
{
    public function __construct($data = null, $status = JsonResponse::HTTP_OK, $headers = [], $options = 0)
    {
        parent::__construct($data, $status, $headers, $options);
    }

    /**
     * @param array $data
     * @return JSendSuccessResponse
     */
    public function setData($data = []): JSendSuccessResponse
    {
        parent::setData($this->formatData($data));

        return $this;
    }

    /**
     * @param $data
     * @return array
     */
    public function formatData($data): array
    {
        return [
            'status' => 'success',
            'data' => $data,
        ];
    }
}
