require 'spec_helper'

describe LocationsController do
  describe 'routing' do
    it 'recognizes and generates #index' do
      { get: '/map' }.should route_to(
        controller: 'locations',
        action:     'index'
      )
    end
  end
end
