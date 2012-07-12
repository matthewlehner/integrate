class LocationsController < ApplicationController
  def index
    @locations = Location.includes(:addressable).scoped
  end
end
