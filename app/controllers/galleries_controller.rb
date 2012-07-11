class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.scoped
  end

  def show
    @gallery = Gallery.find params[:id]
  end
end
