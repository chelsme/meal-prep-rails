class GroceriesController < ApplicationController
  def index
    @groceries = Grocery.all
    render json: @groceries
  end

  def show
    @grocery = find_grocery
    render json: @grocery
  end

  def new
    @grocery = Grocery.create(grocery_params)
    render json: @grocery
  end

  def create
    @grocery = Grocery.create(grocery_params)
    render json: @grocery
  end
  
  def edit
    @grocery = find_grocery
    @grocery.update(grocery_params)
    render json: @grocery
  end

  def update
    @grocery = find_grocery
    @grocery.update(grocery_params)
    render json: @grocery
  end

  def destroy
    @grocery = find_grocery
    @grocery.destroy
  end

  private
  def grocery_params
    params.require(:grocery).permit(:name, :quantity, :shopping_list_id)
  end

  def find_grocery
    @grocery = Grocery.find_by_id(params[:id])
  end
end
