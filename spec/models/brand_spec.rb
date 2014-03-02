require 'spec_helper'

describe Brand do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }

  it "Finds brands by name" do 
    brand1 = FactoryGirl.create(:brand, name: "Brand1") 
    brand2 = FactoryGirl.create(:brand, name: "Brand2") 
    brand3 = FactoryGirl.create(:brand, name: "Brand3") 
    Brand.find_by_name(brand1.name).id.should == brand1.id
    Brand.find_by_name("brand1").should == brand1
    Brand.find_by_name("brAnd1").should == brand1
  end

end
