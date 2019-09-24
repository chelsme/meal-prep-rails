class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    @ingredient = find_ingredient
    render json: @ingredient
  end

  def new
    @ingredient = Ingredient.create(ingredient_params)
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    render json: @ingredient
  end
  
  def edit
    @ingredient = find_ingredient
    @ingredient.update(ingredient_params)
    render json: @ingredient
  end

  def update
    @ingredient = find_ingredient
    @ingredient.update(ingredient_params)
    render json: @ingredient
  end

  def destroy
    @ingredient = find_ingredient
    @ingredient.destroy
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :amount)
  end

  def find_ingredient
    @ingredient = Ingredient.find_by_id(params[:id])
  end
end
