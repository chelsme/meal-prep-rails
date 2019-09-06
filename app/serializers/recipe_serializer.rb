class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :time
  has_many :ingredients
end
