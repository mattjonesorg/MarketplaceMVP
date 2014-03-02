require "spec_helper"




  describe "GET listings as public user" do

	before :each do
      get "/public/listings"
    end
	
	it { should respond_with(:success) }

 	it "should return JSON" do
 	    response.header['Content-Type'].should include 'application/json'
 	end

 	it "should only return items with status approved" do
 	    parsed_response = JSON.parse(response.body)
 	    parsed_response.each do |listing|
 	    	expect(listing["status"]).to eq("Approved")
 	    end
    end
  end
