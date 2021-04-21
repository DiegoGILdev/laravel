<?php

namespace App\Adapters\RestApi;

interface RestApiAdapterInterface
{
    public function get(string $url, array $headers = []);

    public function post(string $url, array $payload, array $headers = []);

    public function put(string $url, array $payload, array $headers = []);

    public function patch(string $url, array $payload, array $headers = []);

    public function delete(string $url, array $headers = []);
}
