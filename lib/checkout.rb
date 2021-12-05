class Shop
  def checkout(sku)
    item_price = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }
    total_price = 0
    if !sku.match?(/[ABCD]/)
      total_price = -1
    else
     item_price.each {|item, price|
      total_price += sku.scan(item).count * price
    }
  end
    total_price
  end
end