require 'spec_helper'

describe StaticPagesController do
  describe 'GET home' do
    it 'renders the home template' do
      get :home
      assigns(:galleries).should eq(Gallery.all)
      assigns(:offsites).should eq(Offsite.all)
      response.should render_template('home')
    end
  end

  describe 'GET about' do
    it 'renders the about template' do
      get :about
      response.should render_template('about')
    end
  end
end
