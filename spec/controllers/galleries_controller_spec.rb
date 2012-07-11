require 'spec_helper'

describe GalleriesController do
  let(:gallery) { FactoryGirl.create(:gallery) }

  describe "GET #index" do
    it 'populates an array of galleries' do
      get :index
      assigns(:galleries).should eq([gallery])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it 'assigns the requested gallery to @gallery' do
      get :show, id: gallery
      assigns(:gallery).should eq(gallery)
    end

    it "renders the :show view" do
      get :show, id: gallery
      response.should render_template :show
    end
  end
end
