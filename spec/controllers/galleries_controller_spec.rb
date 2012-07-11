require 'spec_helper'

describe GalleriesController do
  describe "GET #index" do
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get :show, id: '1'
      response.should render_template :show
    end
  end
end
