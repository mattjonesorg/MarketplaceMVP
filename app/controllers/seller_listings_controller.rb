class SellerListingsController < ApplicationController
	def index
		@data = Listing.get_seller_listings

		render json: @data, :include=>:brand
	end

	def new
		logger.debug(params[:brand][:name])
	end
end
