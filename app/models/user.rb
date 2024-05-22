class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :products, foreign_key: :user_id, class_name: 'Product', dependent: :destroy
  has_many :quantities, foreign_key: :user_id, class_name: 'Quantity', dependent: :destroy
end
