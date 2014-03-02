class SellerListingsController < ApplicationController
	def index
		@data = Listing.get_seller_listings

		render json: @data, :include=>:brand
	end
end
