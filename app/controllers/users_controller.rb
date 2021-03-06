class UsersController < ApplicationController
  def index
    users = User.all
    render json: users, include: '**'
  end

  def show
    user = find_user
    render json: user, include: '**'
  end

  def new
    user = User.new(user_params)
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
    else
      puts user.errors.full_messages
    end
    render json: user
  end
  
  def edit
    user = find_user
    user.update(user_params)
    render json: user
  end

  def update
    user = find_user
    render json: user
  end

  def destroy
    user = find_user
    user.destroy
  end

  private
  def user_params
    params.permit(:name, :password, :password_confirmation, :img)
  end

  def find_user
    user = User.find_by_id(params[:id])
  end
end
