class Quantity < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user
  has_many :orderables


  # has_and_belongs_to_many that joins product and quantity

  # An equation to determine the total price of the product
  def total_price
    price * number
  end

  # If product is less than 10 indicate low stock
  def low_stock
    number < 10
  end
end
