require 'spec_helper'

describe Gallery do
  subject { gallery }
  let(:gallery) { FactoryGirl.create(:gallery) }

  context 'has a picture' do
    it { should respond_to(:photo) }
  end
end
