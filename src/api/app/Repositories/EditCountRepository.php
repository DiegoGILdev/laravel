<?php

namespace App\Repositories;

use App\Models\EditCount;
use Illuminate\Database\Eloquent\Collection;


class EditCountRepository extends EloquentRepository
{
    public const MAX_PAGE_SIZE = 20;

    public function __construct(EditCount $editCount)
    {
        $this->model = $editCount;
    }

    /**
     * @param string $username
     * @param string $title
     * @return $this
     */
    public function store(string $username, string $title): EditCountRepository
    {
        (new EditCount([
            EditCount::FIELD_USERNAME => $username,
            EditCount::FIELD_TITLE => $title,
        ]))->save();

        return $this;
    }

    /**
     * @param string $username
     * @param string $title
     * @param int $pageSize
     * @return Collection
     */
    public function list(string $username, string $title, int $pageSize): Collection
    {
        $pageSize = $pageSize <= self::MAX_PAGE_SIZE ? $pageSize : self::MAX_PAGE_SIZE;

        return EditCount::query()
            ->whereRaw($this->buildWhereCondition($username, $title))
            ->orderBy(EditCount::FIELD_USERNAME)
            ->orderBy(EditCount::FIELD_TITLE)
            ->limit($pageSize)
            ->get();
    }

    /**
     * Raw equivalence of:
     * EditCount::query()
     * ->where(EditCount::FIELD_USERNAME, '=', $username)
     * ->where(EditCount::FIELD_TITLE, '>', $title)
     * ->orWhere(EditCount::FIELD_USERNAME, '>', $username)
     *
     * @param string $username
     * @param string $title
     * @return string
     */
    function buildWhereCondition(string $username, string $title): string
    {
        return "username = '$username' AND title > '$title' OR username > '$username'";
    }
}
