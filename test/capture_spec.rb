#! /usr/bin/env ruby
# coding: utf-8

require(File.dirname(__FILE__) +  '/../lib/dashbutton.rb')

describe Dashbutton::Capture do

  before(:each) do
    @cap = Dashbutton::Capture.new
  end
    
  describe '#initialize' do

    it 'should be a default "ifce" option is PacketFu::Utils.whoami?[:iface]' do
      expect(PacketFu::Utils.whoami?[:iface]).to eq @cap.options[:iface]
    end

    it 'should be a default "filter" option is "arp"' do
      expect("arp").to eq @cap.options[:filter]
    end

  end

end
