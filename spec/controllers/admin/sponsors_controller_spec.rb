require 'spec_helper'

describe Admin::SponsorsController do
  let(:sponsor) { FactoryGirl.create(:sponsor) }

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      assigns(:sponsors).should eq([sponsor])
      response.should render_template 'index'
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      assigns(:sponsor).class.should eq(Sponsor)
      assigns(:sponsor).new_record?.should be_true
      response.should render_template 'new'
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit', id: sponsor.id
      assigns(:sponsor).should eq(sponsor)
      response.should render_template 'edit'
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      expect {
        post 'create', sponsor: FactoryGirl.attributes_for( :sponsor )
      }.to change(Sponsor, :count).by(1)
      response.should redirect_to admin_sponsors_url
    end
  end

  describe "GET 'update'" do
    it "returns http success" do
      put 'update', id: sponsor.id, sponsor: {name: 'Witchita'}
      assigns(:sponsor).name.should eq('Witchita')
      response.should redirect_to admin_sponsors_url
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      delete 'destroy', id: sponsor.id
      response.should be_success
    end
  end
end
