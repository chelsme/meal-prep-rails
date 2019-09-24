class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :time, :ingredients, :user_id
  has_many :ingredients
end
