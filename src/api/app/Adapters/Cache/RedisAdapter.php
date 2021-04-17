<?php

namespace App\Adapters\Cache;

use Illuminate\Support\Facades\Redis;

class RedisAdapter implements CacheAdapterInterface
{
    public function store($key, $value, ?int $ttl = null)
    {
        $result = Redis::set($key, $value);

        if (isset($ttl)) {
            $result = Redis::expire($key, $ttl);
        }

        return $result;
    }

    public function get($key)
    {
        return Redis::get($key);
    }

    public function delete($key)
    {
        return Redis::del($key);
    }

    public function increment($key)
    {
        return Redis::incr($key);
    }

    public function decrement($key)
    {
        return Redis::decr($key);
    }
}
