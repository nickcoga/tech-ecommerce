class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @users = User.find(params[:id])
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      render json: user, status: :update
    else
      render json: user.errors, status: :bad_request
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render status: :no_content
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :role, :phone, :status)
  end
end
