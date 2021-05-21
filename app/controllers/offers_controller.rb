class OffersController < ApplicationController
  def index
    @offers = Offer.all
    render json: @offers
  end

  def show
    @offer = Offer.find(params[:id])
    render json: @offer
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      render json: offer, status: :created
    else
      render json: offer.errors, status: :bad_request
    end
  end

  def update
    @offer = Offer.find(params[:id])

    if @offer.update(offer_params)
      render json: offer, status: :update
    else
      render json: offer.errors, status: :bad_request
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    render status: :no_content
  end

  private

  def offer_params
    params.require(:offer).permit(:discount, :ended_at, :started_at, :status, :product_id)
  end
end
