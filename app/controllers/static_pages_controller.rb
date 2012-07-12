class StaticPagesController < ApplicationController
  def home
    @galleries = Gallery.scoped
  end

  def about
  end
end
