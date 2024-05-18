class Product < ApplicationRecord
  belongs_to :user
  has_many :quantities, dependent: :destroy
  has_one_attached :image
end
