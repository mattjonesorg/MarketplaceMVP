require 'spec_helper'

describe Listing do
  it { should validate_presence_of(:cardnumber) }
  it { should validate_uniqueness_of(:cardnumber) }
  it { should validate_presence_of(:value) }
  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(10) }
  it { should validate_presence_of(:price) }
# Not sure why this is checking only for integers.  Will test verbosely below.  Error message is Listing should only allow numeric, integer values for price
#  it { should validate_numericality_of(:price).is_greater_than(0) }
  it { should ensure_inclusion_of(:status).in_array(["Submitted", "Approved", "Rejected", "Sold"])}

  context "creation" do 
	  describe "price should be less than value and greater than zero" do
      it "should not be valid if price is the same as value" do
        listing = FactoryGirl.build(:listing)
        listing.price = 100.00
        listing.value = 100.00
        listing.should_not be_valid
        listing.errors[:price].should_not be_nil
      end

      it "should not be valid if price is zero" do
        listing = FactoryGirl.build(:listing)
        listing.price = 0.00
        listing.should_not be_valid
        listing.errors[:price].should_not be_nil
      end
	  end
  end

  it "returns an array that includes only the approved items" do 
    approved1 = FactoryGirl.create(:approved) 
    approved2 = FactoryGirl.create(:approved) 
    notapproved = FactoryGirl.create(:submitted) 
    Listing.only_approved().should include approved1
    Listing.only_approved().should include approved2
  end

  it "returns an array that includes all items for the seller" do 
    approved1 = FactoryGirl.create(:approved) 
    approved2 = FactoryGirl.create(:approved) 
    notapproved = FactoryGirl.create(:submitted) 
    Listing.get_seller_listings().should include approved1
    Listing.get_seller_listings().should include approved1
    Listing.get_seller_listings().should include notapproved
  end
end
