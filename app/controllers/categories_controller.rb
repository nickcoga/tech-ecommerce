class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: category, status: :created
    else
      render json: category.errors, status: :bad_request
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      render json: category, status: :update
    else
      render json: category.errors, status: :bad_request
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render status: :no_content
  end

  private

  def category_params
    params.require(:category).permit(:name, :status, :parent_category_id)
  end
end
