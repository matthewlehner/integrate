require "spec_helper"

describe Admin::OffsitesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/offsites").should route_to("admin/offsites#index")
    end

    it "routes to #new" do
      get("/admin/offsites/new").should route_to("admin/offsites#new")
    end

    it "routes to #edit" do
      get("/admin/offsites/1/edit").should route_to("admin/offsites#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/offsites").should route_to("admin/offsites#create")
    end

    it "routes to #update" do
      put("/admin/offsites/1").should route_to("admin/offsites#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/offsites/1").should route_to("admin/offsites#destroy", :id => "1")
    end

  end
end
