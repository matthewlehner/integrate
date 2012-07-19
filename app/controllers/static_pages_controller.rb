class StaticPagesController < ApplicationController
  def home
    @galleries = Gallery.includes(:location).scoped
    @offsites = Offsite.scoped
  end

  def about
  end

  def contact
  end
end
