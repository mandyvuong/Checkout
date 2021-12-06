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
    total_price = -1 if !sku.match?(/[ABCD]/)
    item_price.each {|item, price|
      count = sku.scan(item).count
      if item == 'A' && count >= 3
        total_price += (count)/ 3 * 130
      elsif item == 'B' && count >= 2
        total_price += (count)/ 2 * 45
      else
        total_price += count * price
      end
    }
    total_price
  end
end