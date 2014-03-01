class Listing < ActiveRecord::Base
  belongs_to :brand

  	validates :cardnumber, presence: true, uniqueness:true
  	validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
  	validates :value, presence: true, numericality: {greater_than_or_equal_to: 10}
	validates_inclusion_of :status, :in => ["Submitted", "Approved", "Rejected", "Sold"]
	validates_exclusion_of :status, :in => ["invalid value", "starbucks", "target", "home depot"]
  
end
