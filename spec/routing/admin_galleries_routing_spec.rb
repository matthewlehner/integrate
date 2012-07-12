require 'spec_helper'

describe Admin::GalleriesController do
  describe 'routing' do
    it 'recognizes and generates #index' do
      { get: 'admin/galleries' }.should route_to(
        controller: 'admin/galleries',
        action:     'index'
      )
    end

    it 'recognizes and generates #new' do
      { get: 'admin/galleries/new' }.should route_to(
        controller: 'admin/galleries',
        action:     'new'
      )
    end

    it 'recognizes and generates #create' do
      { post: 'admin/galleries' }.should route_to(
        controller: 'admin/galleries',
        action:     'create'
      )
    end

    it 'will not recognizes and generates #show' do
      { get: 'admin/galleries/1' }.should_not be_routable
    end

    it 'recognizes and generates #edit' do
      { get: 'admin/galleries/1/edit' }.should route_to(
        controller: 'admin/galleries',
        action:     'edit',
        id:         '1'
      )
    end

    it 'recognizes and generates #update' do
      { put: 'admin/galleries/1' }.should route_to(
        controller: 'admin/galleries',
        action:     'update',
        id:         '1'
      )
    end

    it 'recognizes and generates #delete' do
      { delete: 'admin/galleries/1' }.should route_to(
        controller: 'admin/galleries',
        action:     'destroy',
        id:         '1'
      )
    end
  end
end

