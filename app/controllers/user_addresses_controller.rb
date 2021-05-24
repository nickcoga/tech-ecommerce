class UserAddressesController < ApplicationController
  def index
    @user_addresses = UserAddress.all
    render json :@user_addresses
  end

  def show
    @user_addresses = UserAddress.find(params[:id])
    render json: @user_addresses
  end

  def create
    @user_address = UserAddress.new(user_params)
    if @user_address.save
      render json: user_address, status: :created
    else
      render json: user_address.errors, status: :bad_request
    end
  end

  def update
    @user_address = UserAddress.find(params[:id])

    if @user_address.update(user_params)
      render json: user_address, status: :update
    else
      render json: user_address.errors, status: :bad_request
    end
  end

  def destroy
    @user_address = UserAddress.find(params[:id])
    @user_address.destroy
    render status: :no_content
  end

  private

  def user_params
    params.require(:user_address).permit(:user_id, :address)
  end
end
