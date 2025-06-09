<?php

namespace App\Http\Controllers;

use App\Models\MaterialType;
use App\Models\ProductType;
use Illuminate\Http\Request;

class FuncController extends Controller
{
    public function calculateProductionQuantity(int $product_type_id, int $material_type_id, int $quantity, float $p1, float $p2): int{
        try {
            if ($quantity  <= 0 || $p1 <= 0 || $p2 <= 0) {
                return -1;
            }
            $productType = ProductType::findOrFail($product_type_id);
            $materialType = MaterialType::findOrFail($material_type_id);

            // Расчет сырья на одну единицу продукции
            $rawPerProduct = $p1 * $p2 * $productType->coefficient;

            // Учитываем потери материала
            $lossPercent = $materialType->loss;
            $rawWithLoss = $rawPerProduct * (1 + $lossPercent / 100);

            // Вычисление максимального кол-ва продукции
            $productionCount = floor($quantity / $rawWithLoss);

            return $productionCount >= 0 ? (int)$productionCount : 0;

        } catch (\Exception $e) {
            return -1;
        }
    }
}
