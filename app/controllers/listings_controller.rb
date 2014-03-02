class ListingsController < ApplicationController
	def index
		@data = Listing.only_approved

		render json: @data, :include=>:brand
	end
end
