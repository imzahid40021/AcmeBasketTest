class Basket
  # Initializes the basket with products, delivery rules, and offers
  def initialize(products:, delivery_rules:, offers: [])
    @products = products
    @delivery_rules = delivery_rules
    @offers = offers
    @items = []
  end

  # Adds a product to the basket by its product code
  def add(product_code)
    product = @products.find { |p| p[:code] == product_code }
    raise "Invalid product code: #{product_code}" unless product

    @items << product
  end

  # Returns the total cost after applying offers and delivery fees
  def total
    items_total = apply_offers(@items.dup)
    delivery_fee = calculate_delivery(items_total)
    items_total + delivery_fee
  end

  private

  # Applies available offers to items and calculates subtotal
  def apply_offers(items)
    total = 0.0
    offer_map = @offers.map { |o| [o[:code], o] }.to_h
    grouped = items.group_by { |item| item[:code] }

    grouped.each do |code, prods|
      if offer_map.key?(code)
        total += offer_map[code][:apply].call(prods)
      else
        total += prods.sum { |item| item[:price] }
      end
    end

    total
  end

  # Calculates delivery cost based on subtotal using defined rules
  def calculate_delivery(subtotal)
    rule = @delivery_rules.find { |r| subtotal < r[:threshold] }
    rule ? rule[:cost] : 0.0
  end
end
