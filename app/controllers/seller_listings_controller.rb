class SellerListingsController < ApplicationController
	def index
		@data = Listing.get_seller_listings

		render json: @data, :include=>:brand
	end

	def new
		@brand = Brand.find_by_name(params[:brand][:name])
		if( @brand.nil?)
			@brand = Brand.new(:name=>params[:brand][:name])
		end
		@listing = Listing.new
		@listing.brand = @brand
		@listing.cardnumber = params[:cardnumber]
		@listing.price = params[:price]
		@listing.value = params[:value]
		if @listing.save 
			render json: { :status => :ok }
		else
			render json: @listing.errors, :status => :unprocessable_entity
		end
	end
end
