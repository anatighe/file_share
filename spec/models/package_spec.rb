require 'spec_helper'

describe Package do
  it { should belong_to :delivery }
  it { should have_attached_file(:doc) }
end