<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    public $timestamps = false;
    protected $fillable = ['product_type_id', 'name', 'article', 'price'];

    // Связи
    public function productType()
    {
        return $this->belongsTo(ProductType::class);
    }

    public function materialProducts()
    {
        return $this->hasMany(MaterialProduct::class);
    }
}
