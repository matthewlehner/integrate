class Admin::GalleriesController < ApplicationController
  def index
    @galleries = Gallery.scoped
  end

  def new
  end

  def create
  end

  def edit
    @gallery = Gallery.find params[:id]
  end

  def update
    @gallery = Gallery.find params[:id]
    if @gallery.save
      redirect_to admin_galleries_path
    else
      render action: :edit
    end
  end

  def destroy
    gallery = Gallery.find params[:id]
    gallery.destroy
    redirect_to admin_galleries_path
  end
end
