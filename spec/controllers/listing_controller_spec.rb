require "spec_helper"

describe ListingsController do
	describe "GET #index" do
	
		before :each do
		    approved1 = FactoryGirl.create(:approved) 
		    approved2 = FactoryGirl.create(:approved) 
		    notapproved = FactoryGirl.create(:submitted) 
		end

		it "responds successfully with an HTTP 200 status code" do
	      get :index
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end

# I think the controller should have a test like this, but i have a lot more to do.
		#it "should only return items with status approved" do
		#    parsed_response = JSON.parse(response.body)
		#    parsed_response.each do |listing|
		#    	expect(listing["status"]).to eq("Approved")
		#    end
		#end
	end
end