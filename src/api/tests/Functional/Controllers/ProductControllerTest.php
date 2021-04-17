<?php

namespace Tests\Functional\Controllers;

use Illuminate\Http\JsonResponse;
use Tests\TestCase;

class ProductControllerTest extends TestCase
{
    private const PRODUCT_URL_PATH = '/api/products';

    public function test_index_ok_whenValidToken()
    {
        $response = $this->get(self::PRODUCT_URL_PATH, $this->headers);

        $response->assertStatus(JsonResponse::HTTP_OK);
    }

    public function test_index_unauthorized_whenInvalidToken()
    {
        $response = $this->get(self::PRODUCT_URL_PATH);

        $response->assertStatus(JsonResponse::HTTP_UNAUTHORIZED);
    }

    public function test_store_ok_whenValidRequestAndToken()
    {
        $url = self::PRODUCT_URL_PATH;
        $data = [
            'name' => 'new product',
            'description' => 'new description',
            'price' => 1999.90,
            'product_categories_id' => 1,
        ];

        $response = $this->post($url, $data, $this->headers);

        $response->assertStatus(JsonResponse::HTTP_OK);
    }

    public function test_store_unauthorized_whenInvalidToken()
    {
        $url = self::PRODUCT_URL_PATH;
        $data = [];

        $response = $this->post($url, $data);

        $response->assertStatus(JsonResponse::HTTP_UNAUTHORIZED);
    }

    public function test_show_ok_whenValidToken()
    {
        $url = self::PRODUCT_URL_PATH . '/1';

        $response = $this->get($url, $this->headers);

        $response->assertStatus(JsonResponse::HTTP_OK);
    }

    public function test_show_unauthorized_whenInvalidToken()
    {
        $url = self::PRODUCT_URL_PATH . '/1';

        $response = $this->get($url);

        $response->assertStatus(JsonResponse::HTTP_UNAUTHORIZED);
    }

    public function test_update_ok_whenValidToken()
    {
        $url = self::PRODUCT_URL_PATH . '/1';
        $data = [
            'price' => 100.90,
        ];

        $response = $this->put($url, $data, $this->headers);

        $response->assertStatus(JsonResponse::HTTP_OK);
    }

    public function test_update_unauthorized_whenInvalidToken()
    {
        $url = self::PRODUCT_URL_PATH . '/1';
        $data = [];

        $response = $this->put($url, $data);

        $response->assertStatus(JsonResponse::HTTP_UNAUTHORIZED);
    }

    public function test_destroy_ok_whenValidToken()
    {
        $url = self::PRODUCT_URL_PATH . '/1';
        $data = [];

        $response = $this->delete($url, $data, $this->headers);

        $response->assertStatus(JsonResponse::HTTP_OK);
    }

    public function test_destroy_unauthorized_whenInvalidToken()
    {
        $url = self::PRODUCT_URL_PATH . '/1';
        $data = [];

        $response = $this->delete($url, $data);

        $response->assertStatus(JsonResponse::HTTP_UNAUTHORIZED);
    }
}
