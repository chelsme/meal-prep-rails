class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, include: '**'
  end

  def show
    @user = find_user
    render json: @user, include: '**'
  end

  def new
    @user = User.create(user_params)
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end
  
  def edit
    @user = User.update(user_params)
    render json: @user
  end

  def update
    @user = User.update(user_params)
    render json: @user
  end

  def destroy
    @user = find_user
    @user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def find_user
    @user = User.find_by_id(params[:id])
  end
end
