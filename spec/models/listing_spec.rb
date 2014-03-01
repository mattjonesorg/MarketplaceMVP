require 'spec_helper'

describe Listing do
  it { should validate_presence_of(:cardnumber) }
  it { should validate_uniqueness_of(:cardnumber) }
end
