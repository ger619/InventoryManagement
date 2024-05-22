class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :quantities, foreign_key: :product_id, class_name: 'Quantity', dependent: :destroy


  # has_and_belongs_to_many that joins product and quantity
end
