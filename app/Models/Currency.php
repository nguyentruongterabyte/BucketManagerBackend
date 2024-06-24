<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Currency extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        '_ISO_code',
        '_state_territory',
        '_symbol',
        '_currency',
        '_fractional_unit',
        '_number_to_basic'
    ];
}
