class Orderable < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :quantity

  def total_price
    quantity.price * quantity
  end
end
