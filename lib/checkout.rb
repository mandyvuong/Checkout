class Shop

  def checkout(sku)
    item_price_calculation(sku)
  end

  private

  def item_price
    {
      'A' => 50,
      'B' => 30,
      'C' => 20,
      'D' => 15
    }
  end

  def item_price_calculation(sku)
    total_price = 0
    if !sku.match?(/[ABCD]/)
      total_price = -1
    else
     item_price.each {|item, price|
      if item == 'A' && sku.scan(item).count >= 3
        total_price += (sku.scan(item).count)/ 3 * 130
      else
        total_price += sku.scan(item).count * price
      end
    }
    end
    total_price
  end
end