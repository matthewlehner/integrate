class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.scoped
  end
end
