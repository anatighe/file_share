require 'spec_helper'

describe Package do
  it { should belong_to :shipment }
  it { should have_attached_file(:doc) }
end