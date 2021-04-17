<?php

namespace App\Adapters\Cache;

interface CacheAdapterInterface
{
    public function store($key, $value, ?int $ttl = null);

    public function get($key);

    public function delete($key);

    public function increment($key);

    public function decrement($key);
}
