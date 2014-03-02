require 'spec_helper'

describe SellerListingsController do
	before :each do
	    approved1 = FactoryGirl.create(:approved) 
	    approved2 = FactoryGirl.create(:approved) 
	    notapproved = FactoryGirl.create(:submitted) 
	end

	describe "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
	      get :index
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end
	end
end
