require 'spec_helper'

describe OffsitesController do
  let(:offsite) { FactoryGirl.create(:offsite) }

  describe "GET index" do
    it "assigns all offsites as @offsites" do
      get :index
      assigns(:offsites).should eq([offsite])
    end
  end
end
