class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:notice] = "Here are your elected officials"
    else
      flash[:notice] = "Something went wrong. Please try again"
      render :index
    end
  end
end
