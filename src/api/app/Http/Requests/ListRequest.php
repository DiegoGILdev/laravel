<?php

namespace App\Http\Requests;

use App\Helpers\Paginator;
use App\Helpers\Sorting;
use App\Models\Model;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Validation\Rule;


class ListRequest extends Request
{
    public const PARAM_LIMIT = 'limit';
    public const PARAM_SORT_COLUMN = 'column';
    public const PARAM_SORT_DIRECTION = 'direction';

    public Paginator $paginator;

    /**
     * @return Paginator
     */
    public function getPaginator(): Paginator
    {
        return $this->paginator;
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Prepare the data for validation.
     *
     * @return void
     */
    protected function prepareForValidation()
    {
        $data[self::PARAM_LIMIT] = $this->get(self::PARAM_LIMIT) ?? 10;
        $data[self::PARAM_SORT_COLUMN] = $this->get(self::PARAM_SORT_COLUMN) ?? Model::ID;
        $data[self::PARAM_SORT_DIRECTION] = $this->get(self::PARAM_SORT_DIRECTION) ?? Sorting::ASC;

        $this->merge($data);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            self::PARAM_LIMIT => 'int',
            self::PARAM_SORT_COLUMN => 'string',
            self::PARAM_SORT_DIRECTION => Rule::in(Sorting::ASC, Sorting::DESC),
        ];
    }

    /**
     * Handle a passed validation attempt.
     *
     * @return void
     * @throws BindingResolutionException
     */
    protected function passedValidation()
    {
        $this->paginator = app()->make(Paginator::class);

        $sorting = new Sorting(
            $this->get(ListRequest::PARAM_SORT_COLUMN),
            $this->get(ListRequest::PARAM_SORT_DIRECTION)
        );

        $this->paginator->setLimit($this->get(ListRequest::PARAM_LIMIT));
        $this->paginator->setSorting($sorting);
    }
}
