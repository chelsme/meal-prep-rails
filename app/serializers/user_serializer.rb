class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :password_confirmation, :recipes
  has_many :recipes
end
