class ListingsController < ApplicationController
	def index
		@data = Listing.all

		render json: @data, :include=>:brand
	end
end
