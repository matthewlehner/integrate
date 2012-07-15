class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsors.scoped
  end
end
