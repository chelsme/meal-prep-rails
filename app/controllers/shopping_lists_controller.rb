class ShoppingListsController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
    render json: @shopping_lists
  end

  def show
    @shopping_list = find_shopping_list
    render json: @shopping_list
  end

  def new
    @shopping_list = ShoppingList.create(shopping_list_params)
    render json: @shopping_list
  end

  def create
    @shopping_list = ShoppingList.create(shopping_list_params)
    render json: @shopping_list
  end
  
  def edit
    @shopping_list = ShoppingList.update(shopping_list_params)
    render json: @shopping_list
  end

  def update
    @shopping_list = ShoppingList.update(shopping_list_params)
    render json: @shopping_list
  end

  def destroy
    @shopping_list = find_shopping_list
    @shopping_list.destroy
  end

  private
  def shopping_list_params
    params.require(:shopping_list).permit(:name, :password, :password_confirmation)
  end

  def find_shopping_list
    @shopping_list = ShoppingList.find_by_id(params[:id])
  end
end
