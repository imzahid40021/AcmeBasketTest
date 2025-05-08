require_relative 'setup'

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
basket.add('G01')
puts "Total: $#{'%.2f' % basket.total}" # $37.85

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('R01')
basket.add('R01')
puts "Total: $#{'%.2f' % basket.total}" # $54.37

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('R01')
basket.add('G01')
puts "Total: $#{'%.2f' % basket.total}" # $60.85

basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: OFFERS)
basket.add('B01')
basket.add('B01')
basket.add('R01')
basket.add('R01')
basket.add('R01')
puts "Total: $#{'%.2f' % basket.total}" # $98.27