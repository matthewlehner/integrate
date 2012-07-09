require 'spec_helper'

describe StaticPagesController do
  describe 'routing' do
    it 'recognizes and generates #home' do
      { get: '/' }.should route_to(
        controller: 'static_pages',
        action:     'home'
      )
    end

    it 'recognizes and generates #about' do
      { get: '/about' }.should route_to(
        controller: 'static_pages',
        action:     'about'
      )
    end
  end
end
