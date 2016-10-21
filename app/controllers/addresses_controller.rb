class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new
    if @address.save
      flash[:notice] = "Here are your elected officials"
      redirect_to district_addresses_path
    else
      flash[:notice] = "Something went wrong. Please try again"
      render :index
    end
  end

  def update
  end
end
