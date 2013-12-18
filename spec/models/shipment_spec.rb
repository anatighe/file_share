require 'spec_helper'

describe Shipment do
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_email }
  it { should validate_presence_of :recipient_email }
  it { should have_many :packages }
end