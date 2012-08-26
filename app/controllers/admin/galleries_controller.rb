class Admin::GalleriesController < AdminController
  def index
    @galleries = Gallery.includes(:location)
  end

  def new
    @gallery = Gallery.new
    @gallery.build_location
  end

  def create
    @gallery = Gallery.create params[:gallery]
    redirect_to admin_galleries_path
  end

  def edit
    @gallery = Gallery.find params[:id]
  end

  def update
    @gallery = Gallery.find params[:id]
    if @gallery.update_attributes(params[:gallery])
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
