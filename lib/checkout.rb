class Shop
  def checkout(sku)
    if sku == 'A'
      50
    elsif sku == 'B'
      30
    elsif sku == 'C'
      20
    elsif sku == 'D'
      15
    else
      -1
    end
  end
end