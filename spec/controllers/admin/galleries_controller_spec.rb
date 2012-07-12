require 'spec_helper'

describe Admin::GalleriesController do
  let(:gallery) { FactoryGirl.create( :gallery ) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      assigns(:galleries).should eq([gallery])
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "PUT 'create'" do
    it "returns http success" do
      put 'create'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get :edit, id: gallery
      response.should be_success
    end
  end

  describe "PUT 'update'" do
    it "returns http success" do
      put 'update', id: gallery
      assigns(:gallery).should eq(gallery)
      response.should redirect_to admin_galleries_url
    end
  end

  describe "delete #destroy" do
    it "redirects to admin/galleries index" do
      delete :destroy, id: gallery
      response.should redirect_to admin_galleries_url
    end
  end
end
