class Admin::OffsitesController < ApplicationController
  def index
    @offsites = Offsite.all
  end

  def show
    @offsite = Offsite.find(params[:id])
  end

  def new
    @offsite = Offsite.new
  end

  def edit
    @offsite = Offsite.find(params[:id])
  end

  def create
    @offsite = Offsite.new(params[:admin_offsite])

    if @offsite.save
      redirect_to @offsite, notice: 'Offsite was successfully created.'
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
