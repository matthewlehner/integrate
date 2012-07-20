class OffsitesController < ApplicationController
  def index
    @offsites = Offsite.order("offsites.starts_at ASC")
  end
end
