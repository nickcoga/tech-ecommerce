class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: product, status: :created
    else
      render json: product.errors, status: :bad_request
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      render json: product, status: :update
    else
      render json: product.errors, status: :bad_request
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render status: :no_content
  end

  private

  def product_params
    params.require(:product).permit(:brand, :model, :name, :unit_price, :weight, :category_id)
  end
end
