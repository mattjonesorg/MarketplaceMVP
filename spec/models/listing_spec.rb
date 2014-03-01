require 'spec_helper'

describe Listing do
  it { should validate_presence_of(:cardnumber) }
  it { should validate_uniqueness_of(:cardnumber) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  it { should validate_presence_of(:value) }
  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(10) }
  it { should ensure_inclusion_of(:status).in_array(["Submitted", "Approved", "Rejected", "Sold"])}

  context "creation" do 
	  describe "price should be less than value" do
	  	it "should not be valid if price is the same as value" do
	  		listing = FactoryGirl.build(:listing)
	  		listing.price = 100.00
	  		listing.value = 100.00
	  		listing.should be_valid
	  	end
	  end
  end

end
