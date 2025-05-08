require_relative 'basket'
require_relative 'offer_rules'

PRODUCTS = [
  { code: 'R01', name: 'Red Widget', price: 32.95 },
  { code: 'G01', name: 'Green Widget', price: 24.95 },
  { code: 'B01', name: 'Blue Widget', price: 7.95 }
]

DELIVERY_RULES = [
  { threshold: 50.0, cost: 4.95 },
  { threshold: 90.0, cost: 2.95 }
]

OFFERS = [
  OfferRules.buy_one_get_second_half_price('R01', 32.95)
]