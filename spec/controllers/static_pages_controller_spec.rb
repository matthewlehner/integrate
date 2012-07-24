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

  describe 'GET contact' do
    it 'renders the contact template' do
      get :contact
      response.should render_template('contact')
    end
  end

  describe 'mobile GET home' do
    it 'renders the mobile home template' do
      request.stub!(:user_agent).and_return('Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3')
      get :home
      controller.mobile_device?.should be_true
      controller.view_paths.should include(Rails.root + 'app/views/mobile_views')
    end
  end
end
