class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :password_confirmation, :img, :recipes
  has_many :recipes
end
