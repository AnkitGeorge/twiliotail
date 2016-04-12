class Product < ActiveRecord::Base
  validates :name, confirmation: true,
                   length: {minimum:3, maximum: 20},
                   uniqueness: true

  def formatted_price
   price_in_dollars = price_in_cents.to_f / 100
   sprintf("%.2f", price_in_dollars)
  end

  

end
