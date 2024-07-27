<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wallet extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [       
        '_account_id',
        '_name',
        '_wallet_type_code',
        '_initial_amount',
        '_amount',
        '_color',
        '_exclude',
    ];

    protected $hidden = [
        'updated_at',
        'created_at', 
        '_wallet_type_code'
    ];

    protected $table = 'wallets';

    public function user() {
        return $this->belongsTo(User::class, '_account_id');
    }

    public function walletType() {
        return $this->belongsTo(WalletType::class, '_wallet_type_code', '_code');
    }
    
}
