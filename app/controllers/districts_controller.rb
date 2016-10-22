class DistrictsController < ApplicationController
  def index
    @districts = District.all
  end

  def new
    @district = District.new
    @address = Address.find(params[:id])
  end

  def create
    @district = District.new(district_params)
    @address = Address.find(params[:address_id])
    @district.address = @address

    if @district.save
      flash[:notice] = "District saved"
      redirect_to address_path(@address)
    else
      @errors = @district.errors.full_messages.join(', ')
      flash[:notice] = @errors
    end
  end
end
