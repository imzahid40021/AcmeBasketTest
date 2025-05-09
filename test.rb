require_relative 'setup'

# Truncates a float to two decimal places without rounding
def truncate_to_2_decimals(num)
  (num * 100).floor / 100.0
end

# Test 1: B01 + G01 (no discounts, regular delivery)
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
basket.add('G01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $37.85

# Test 2: R01 + R01 (offer applied: 2nd red widget at half price)
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('R01')
basket.add('R01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $54.37

# Test 3: R01 + G01 (only one red widget, no offer triggered)
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('R01')
basket.add('G01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $60.85

# Test 4: B01 x2, R01 x3 (offer applied to 2 R01s, one at full price; includes delivery logic)
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
basket.add('B01')
basket.add('R01')
basket.add('R01')
basket.add('R01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}" # $98.27

# Test 5:
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
puts "Total: $#{truncate_to_2_decimals(basket.total)}"

# Test 6:
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
4.times { basket.add('R01') }
puts "Total: $#{truncate_to_2_decimals(basket.total)}"

# Test 7:
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
5.times { basket.add('R01') }
puts "Total: $#{truncate_to_2_decimals(basket.total)}" 

# Test 8:
basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
2.times { basket.add('G01') }
3.times { basket.add('B01') }
puts "Total: $#{truncate_to_2_decimals(basket.total)}"
