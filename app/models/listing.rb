class Listing < ActiveRecord::Base
  belongs_to :brand

  	validates :cardnumber, presence: true, uniqueness:true
  	validates :price, presence: true, numericality: {greater_than: 0}
  	validates_numericality_of :price, less_than: ->(listing) { listing.value }
  	validates :value, presence: true, numericality: {greater_than_or_equal_to: 10}
	validates_inclusion_of :status, :in => ["Submitted", "Approved", "Rejected", "Sold"]

	def self.only_approved() 
		where(status: "Approved") 
	end

	#when we have logins, this method would accept a userid, for now see I in SOLID principles.
	def self.get_seller_listings()
		all
	end
end

