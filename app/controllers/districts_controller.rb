class DistrictsController < ApplicationController
  def index
    @districts = District.all
  end

  def new
    @district = District.new
  end
end
