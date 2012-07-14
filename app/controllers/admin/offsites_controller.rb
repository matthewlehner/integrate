class Admin::OffsitesController < ApplicationController
  def index
    @offsites = Offsite.scoped
  end

  def show
    @offsite = Offsite.find(params[:id])
  end

  def new
    @offsite = Offsite.new
    @offsite.build_location
  end

  def edit
    @offsite = Offsite.find(params[:id])
  end

  def create
    @offsite = Offsite.new(params[:offsite])

    if @offsite.save
      redirect_to admin_offsites_url, notice: 'Offsite was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @offsite = Offsite.find(params[:id])
  end

  def destroy
    @offsite = Offsite.find(params[:id])
    @offsite.destroy

    redirect_to admin_offsites_url
  end
end
