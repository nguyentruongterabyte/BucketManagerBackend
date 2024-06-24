<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [       
        '_hex',
    ];

    protected $table = 'colors';

    public function wallets() {
        return $this->hasMany(Wallet::class, '_color_id');
    } 
}
