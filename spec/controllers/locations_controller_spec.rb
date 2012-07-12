require 'spec_helper'

describe LocationsController do
  let(:location) { FactoryGirl.create( :location ) }

  describe 'GET #index' do
    it 'assigns galleries' do
      get :index
      assigns(:locations).should eq([location])
    end

    it 'renders index' do
      get :index
      response.should render_template :index
    end
  end
end
