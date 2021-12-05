class Shop
  def checkout(sku)
    if sku == 'A' 
      50
    elsif sku == 'B'
      30
    elsif sku == 'C'
      20
    else
      15
    end
  end
end