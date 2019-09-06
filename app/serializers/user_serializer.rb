class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :password_confirmation
  has_many :recipes
end
