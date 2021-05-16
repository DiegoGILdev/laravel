<?php

namespace Tests\Functional\Controllers;

use Illuminate\Http\JsonResponse;
use Tests\TestCase;


class EditCountControllerTest extends TestCase
{
    private const EDIT_COUNT_URL_PATH = '/api/edit_count?username=UserB&title=Carrots&page_size=5';

    public function test_list_ok_whenValidToken()
    {
        $expectedJsonResponse = '{
          "status": "success",
          "data": [
            {
              "username": "UserB",
              "title": "Durian",
              "count": 1
            },
            {
              "username": "UserC",
              "title": "Apples",
              "count": 1
            },
            {
              "username": "UserC",
              "title": "Bananas",
              "count": 1
            },
            {
              "username": "UserC",
              "title": "Carrots",
              "count": 1
            },
            {
              "username": "UserC",
              "title": "Durian",
              "count": 1
            }
          ]
        }';

        $response = $this->get(self::EDIT_COUNT_URL_PATH, $this->headers);

        $response
            ->assertStatus(JsonResponse::HTTP_OK)
            ->assertJsonCount(5, 'data')
            ->assertExactJson(json_decode($expectedJsonResponse, true));
    }

    public function test_list_unauthorized_whenInvalidToken()
    {
        $response = $this->get(self::EDIT_COUNT_URL_PATH);

        $response->assertStatus(JsonResponse::HTTP_UNAUTHORIZED);
    }
}
