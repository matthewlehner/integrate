class LocationsController < ApplicationController
  def index
    @locations = Location.includes(:addressable).where("latitude is not NULL")
  end
end
