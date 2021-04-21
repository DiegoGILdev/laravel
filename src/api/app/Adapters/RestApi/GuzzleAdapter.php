<?php

namespace App\Adapters\RestApi;

use App\Exceptions\RestApi\RestApiClientException;
use App\Exceptions\RestApi\RestApiRequestException;
use App\Exceptions\RestApi\RestApiServerException;
use App\Exceptions\RestApi\RestApiUnavailableException;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use GuzzleHttp\Exception\ConnectException;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Exception\ServerException;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Arr;

class GuzzleAdapter implements RestApiAdapterInterface
{
    /**
     * @param string $url
     * @param array $headers
     * @return array
     * @throws BindingResolutionException
     * @throws GuzzleException
     * @throws RestApiClientException
     * @throws RestApiRequestException
     * @throws RestApiServerException
     * @throws RestApiUnavailableException
     */
    public function get(string $url, array $headers = []): array
    {
        return $this->request('GET', $url, $headers);
    }

    /**
     * @param string $url
     * @param array $payload
     * @param array $headers
     * @return array
     * @throws BindingResolutionException
     * @throws GuzzleException
     * @throws RestApiClientException
     * @throws RestApiRequestException
     * @throws RestApiServerException
     * @throws RestApiUnavailableException
     */
    public function post(string $url, array $payload, array $headers = []): array
    {
        return $this->request('POST', $url, $payload, $headers);
    }

    /**
     * @param string $url
     * @param array $payload
     * @param array $headers
     * @return array
     * @throws BindingResolutionException
     * @throws GuzzleException
     * @throws RestApiClientException
     * @throws RestApiRequestException
     * @throws RestApiServerException
     * @throws RestApiUnavailableException
     */
    public function put(string $url, array $payload, array $headers = []): array
    {
        return $this->request('PUT', $url, $payload, $headers);
    }

    /**
     * @param string $url
     * @param array $payload
     * @param array $headers
     * @return array
     * @throws BindingResolutionException
     * @throws GuzzleException
     * @throws RestApiClientException
     * @throws RestApiRequestException
     * @throws RestApiServerException
     * @throws RestApiUnavailableException
     */
    public function patch(string $url, array $payload, array $headers = []): array
    {
        return $this->request('PATCH', $url, $payload, $headers);
    }

    /**
     * @param string $url
     * @param array $headers
     * @return array
     * @throws BindingResolutionException
     * @throws GuzzleException
     * @throws RestApiClientException
     * @throws RestApiRequestException
     * @throws RestApiServerException
     * @throws RestApiUnavailableException
     */
    public function delete(string $url, array $headers = []): array
    {
        return $this->request('DELETE', $url, $headers);
    }

    /**
     * @param string $method
     * @param string $url
     * @param array $payload
     * @param array $headers
     * @return array
     * @throws RestApiClientException
     * @throws RestApiRequestException
     * @throws RestApiServerException
     * @throws RestApiUnavailableException
     * @throws GuzzleException
     * @throws BindingResolutionException
     */
    private function request(string $method, string $url, array $payload = [], array $headers = []): array
    {
        $arrayHelper = app()->make(Arr::class);
        $guzzle = app()->make(Client::class);
        $options = [
            'headers' => $headers,
            'body' => !empty($payload) ? json_encode($payload) : null,
        ];

        try {
            $response = $guzzle->request($method, $url, $options);

        } catch (ConnectException $exception) {
            throw new RestApiUnavailableException();

        } catch (ServerException $serverException) {
            if (in_array($serverException->getCode(), [
                JsonResponse::HTTP_BAD_GATEWAY,
                JsonResponse::HTTP_SERVICE_UNAVAILABLE,
            ])) {
                throw new RestApiUnavailableException();
            }

            throw new RestApiServerException(
                $serverException->getMessage(),
                $serverException->getCode(),
                $serverException
            );

        } catch (ClientException $clientException) {
            $responseBody = json_decode($clientException->getResponse()->getBody(), true);

            throw new RestApiClientException(
                $arrayHelper::get($responseBody, 'message', $clientException->getMessage()),
                $clientException->getCode(),
                $clientException
            );

        } catch (RequestException $requestException) {
            throw new RestApiRequestException(
                $requestException->getMessage(),
                $requestException->getCode(),
                $requestException
            );
        }

        $bodyContent = $response->getBody()->getContents();

        return json_decode($bodyContent, true);
    }
}
