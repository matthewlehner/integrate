require 'spec_helper'

describe ApplicationHelper do
  describe '#url_with_protocol' do
    it 'adds the protocol if necessary' do
      helper.url_with_protocol('www.google.com').should eq('http://www.google.com')
    end

    it "doesn't add the protocol if there already" do
      helper.url_with_protocol('http://www.google.com').should eq('http://www.google.com')
    end
  end
end
