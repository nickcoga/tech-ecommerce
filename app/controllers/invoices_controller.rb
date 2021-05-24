class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
    render json: @invoices
  end

  def show
    @invoices = Invoice.find(params[:id])
    render json: @invoices
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      render json: invoice, status: :created
    else
      render json: invoice.errors, status: :bad_request
    end
  end

  def update
    @invoice = Invoice.find(params[:id])

    if @invoice.update(invoice_params)
      render json: invoice, status: :update
    else
      render json: invoice.errors, status: :bad_request
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    render status: :no_content
  end

  private

  def invoice_params
    params.require(:invoice).permit(:user_id, :order_id, :address_id, :sub_total, :igv, :net_total,
                                    :invoice_number, :status, :ruc)
  end
end
