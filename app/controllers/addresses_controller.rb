class AddressesController < ApplicationController
  def show
    @addresses = Address.all
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:notice] = "Here are your elected officials"
      redirect_to district_address_path
    else
      flash[:notice] = "Something went wrong. Please try again"
      render :index
    end
  end

  def update

  end
end
