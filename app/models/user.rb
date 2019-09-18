class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  has_many :ingredients, through: :recipes
  has_one :shopping_list
  has_many :groceries, through: :shopping_list
end
