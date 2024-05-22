class Cart < ApplicationRecord
  has_many :orderables
  has_many :products, through: :orderables
  has_many :quantities, through: :orderables

  def total_price
    orderables.to_a.sum { |orderable| orderable.total_price }
  end
end
