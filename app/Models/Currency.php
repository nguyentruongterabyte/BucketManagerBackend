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
        '_symbol',
        '_currency',
    ];

    protected $table = 'currencies';

    protected $hidden = [
        'created_at', 
        'updated_at'
    ];

    public function users() {
        return $this->hasMany(User::class, '_initial_currency_id');
    }
}
