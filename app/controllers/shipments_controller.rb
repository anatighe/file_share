class ShipmentsController < ApplicationController
  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipment.new(shipment_params)
    if @shipment.save
      UserMailer.notification_email(@shipment).deliver
      flash[:notice] = "Your shipment has been created. We'll send an e-mail when the files are accessed."
      redirect_to root_url
    else 
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def show
    @shipment = Shipment.find_by_token(params[:token])
    @packages = @shipment.packages
    UserMailer.user_notification_email(@shipment).deliver
  end

private
  def shipment_params
    params.require(:shipment).permit(:name, :user_email, :recipient_email, :message, packages_attributes: [:shipment_id, :doc])
  end
end