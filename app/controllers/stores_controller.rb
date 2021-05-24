class StoresController < ApplicationController
  def index
    @stores = Store.all
    render json: @stores
  end

  def show
    @store = Store.find(params[:id])
    render json: @store
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      render json: store, status: :created
    else
      render json: store.errors, status: :bad_request
    end
  end

  def update
    @store = Store.find(params[:id])

    if @store.update(store_params)
      render json: store, status: :update
    else
      render json: store.errors, status: :bad_request
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    render status: :no_content
  end

  private

  def store_params
    params.require(:store).permit(:address, :annex, :status, :url_address)
  end
end
