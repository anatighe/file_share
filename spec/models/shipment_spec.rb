require 'spec_helper'

describe Shipment do
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_email }
  it { should validate_presence_of :recipient_email }
  it { should have_many :packages }
  
  describe 'time_left' do
    it 'tells you how long the shipment will be available' do
      @shipment = FactoryGirl.create(:shipment)
      @shipment.time_left.should eq 72
    end
  end
end