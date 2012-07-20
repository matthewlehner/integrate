require "spec_helper"

describe OffsitesController do
  describe "routing" do
    it "routes to #index" do
      get("/offsites").should route_to("offsites#index")
    end
  end
end
