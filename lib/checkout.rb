class Shop
  def checkout(sku)
    if sku == 'A' 
      50
    elsif sku == 'B'
      30
    else
      20
    end
  end
end