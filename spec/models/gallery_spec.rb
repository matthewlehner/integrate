require 'spec_helper'

describe Gallery do
  subject { gallery }
  let(:gallery) { FactoryGirl.create(:gallery) }

  it 'has a valid factory' do
    gallery.should be_valid
  end

  context 'has a picture' do
    it { should respond_to(:photo) }
  end

  it 'checks for name' do
    Gallery.new.should have(1).error_on(:name)
  end

  it 'checks for name' do
    Gallery.new.should have(1).error_on(:photo)
  end
end
