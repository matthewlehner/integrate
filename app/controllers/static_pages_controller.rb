class StaticPagesController < ApplicationController
  def home
    @galleries = Gallery.includes(:location).scoped
  end

  def about
  end
end
