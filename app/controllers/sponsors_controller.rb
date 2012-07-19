class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.positioned
  end
end
