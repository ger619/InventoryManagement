class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :quantities, dependent: :destroy

  # has_and_belongs_to_many that joins product and quantity
end
