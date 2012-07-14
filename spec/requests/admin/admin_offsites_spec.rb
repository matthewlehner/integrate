require 'spec_helper'

describe "Admin::Offsites" do
  describe "GET /admin_offsites" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get admin_offsites_path
      response.status.should be(200)
    end
  end
end
