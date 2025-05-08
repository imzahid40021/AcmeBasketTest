module OfferRules
  def self.buy_one_get_second_half_price(code, price)
    {
      code: code,
      apply: lambda { |items|
        count = items.count
        pairs = count / 2
        remaining = count % 2

        total = (pairs * (price + price / 2.0)) + (remaining * price)
        total
      }
    }
  end
end