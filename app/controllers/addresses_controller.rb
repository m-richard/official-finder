class AddressesController < ApplicationController
  def index
    @address = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:notice] = "Here are your elected officials"
      redirect_to addresses_path(@address)
    else
      @errors = @address.errors.full_messages.join(', ')
      flash[:notice] = @errors
      render :index
    end
  end

  def show
    @address = Address.find(params[:id])
  end

  # private
  #
  # def address_params
  #   params.require(:address).permit(:district_id, :street, :city, :state, :zip_code)
  # end
end
