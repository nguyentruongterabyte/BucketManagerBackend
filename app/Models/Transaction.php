<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
    
                '_amount',
                '_description',
                '_wallet_id'  ,
                '_category_id' ,
                '_memo' ,
                '_from_wallet_id',
                '_to_wallet_id' ,
                '_fee',
                '_transaction_type_id',
                '_date' 
    ];
    protected $table = 'transactions';

    protected $dates = ['_date'];

    public function setDateAttribute($value)
    {
        $this->attributes['_date'] = \Carbon\Carbon::parse($value)->format('Y-m-d H:i:s');
    }

    public function category() {
        return $this->belongsTo(Category::class, '_category_id');
    }

    public function wallet() {
        return $this->belongsTo(Wallet::class, '_wallet_id');
    }

    public function fromWallet() {
        return $this->belongsTo(Wallet::class, '_from_wallet_id');
    }

    public function toWallet() {
        return $this->belongsTo(Wallet::class, '_to_wallet_id');
    }
}
