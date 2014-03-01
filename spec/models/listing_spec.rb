require 'spec_helper'

describe Listing do
  it { should validate_presence_of(:cardnumber) }
  it { should validate_uniqueness_of(:cardnumber) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  it { should validate_presence_of(:value) }
  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(10) }
end
