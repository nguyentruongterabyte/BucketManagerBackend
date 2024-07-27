<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WalletType extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        '_code',
        '_name',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];

    protected $table = 'wallet_types';

    public function wallets() {
        return $this->hasMany(Wallet::class, '_wallet_type_code', '_code');
    }
}
