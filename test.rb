require_relative 'setup'

def truncate_to_2_decimals(num)
  (num * 100).floor / 100.0
end

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
basket.add('G01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $37.85

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('R01')
basket.add('R01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $54.37

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('R01')
basket.add('G01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $60.85

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
basket.add('B01')
basket.add('R01')
basket.add('R01')
basket.add('R01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $98.27