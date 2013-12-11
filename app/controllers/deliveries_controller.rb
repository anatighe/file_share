class DeliveriesController < ApplicationController
  def new
    @delivery = Delivery.new
  end

  def create

    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      flash[:notice] = "Your delivery has been created."
      redirect_to @delivery
    else 
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def show
    @delivery = Delivery.find(params[:id])
    @packages = @delivery.packages
  end

private
  def delivery_params
    params.require(:delivery).permit(:name, :user_email, :recipient_email, :message, :packages => [:delivery_id, :doc])
  end
end