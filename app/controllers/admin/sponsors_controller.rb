class Admin::SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.positioned
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find params[:id]
  end

  def create
    Sponsor.create(params[:sponsor])
    redirect_to admin_sponsors_url
  end

  def update
    @sponsor = Sponsor.find params[:id]
    if @sponsor.update_attributes(params[:sponsor])
      redirect_to admin_sponsors_url
    else
      render :edit
    end
  end

  def destroy
    sponsor = Sponsor.find params[:id]
    sponsor.destroy
    redirect_to admin_sponsors_url
  end
end
