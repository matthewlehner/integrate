class Admin::GalleriesController < ApplicationController
  def index
    @galleries = Gallery.scoped
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    gallery = Gallery.find params[:id]
    gallery.destroy
    redirect_to admin_galleries_url
  end
end
