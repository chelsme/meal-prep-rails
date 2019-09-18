class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes, include: '**'
  end

  def show
    @recipe = find_recipe
    render json: @recipe, include: '**'
  end

  def new
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end
  
  def edit
    @recipe = Recipe.update(recipe_params)
    render json: @recipe
  end

  def update
    @recipe = Recipe.update(recipe_params)
    render json: @recipe
  end

  def destroy
    @recipe = find_recipe
    @recipe.destroy
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :time)
  end

  def find_recipe
    @recipe = Recipe.find_by_id(params[:id])
  end
end
