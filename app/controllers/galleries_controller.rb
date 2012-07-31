class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.includes(:location)
  end

  def show
    @gallery = Gallery.find params[:id]
  end
end
