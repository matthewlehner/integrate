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
      assigns(:gallery).class.should eq(Gallery)
      response.should be_success
    end
  end

  describe "PUT 'create'" do
    it "returns http success" do
      expect {
        put 'create', gallery: FactoryGirl.attributes_for( :gallery )
      }.to change(Gallery, :count).by(1)
      response.should redirect_to admin_galleries_url
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get :edit, id: gallery
      assigns(:gallery).should eq(gallery)
      response.should render_template :edit
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
