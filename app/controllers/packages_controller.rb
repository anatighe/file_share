class PackagesController < ApplicationController
  def new
    respond_to do |format|
      format.html { @package = Package.new(package_params) }
      format.js { @package = Package.new(package_params) }
    end  
  end

  def create
    @package = Package.new(package_params)
    if @package.save
      flash[:notice] = "Your package has been added."
      redirect_to @package.delivery
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end
  end

  def show
    @package = Package.find(params[:id])
  end

private
  def package_params
    params.require(:package).permit(:doc, :delivery_id)
  end
end