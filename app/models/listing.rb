class Listing < ActiveRecord::Base
  belongs_to :brand

  	validates :cardnumber, presence: true, uniqueness:true
  	validates :price, :price, presence: true, numericality: {greater_than_or_equal_to: 0}
  	validates :value, presence: true, numericality: {greater_than_or_equal_to: 10}
	validates_inclusion_of :status, :in => ["Submitted", "Approved", "Rejected", "Sold"]
	validates_exclusion_of :status, :in => ["invalid value", "starbucks", "target", "home depot"]

end


class PriceValidator < ActiveModel::Validator
	def validate(record)
		unless record.price < record.value
			record.errors[:price] << "Price must be less than the value of the gift card"
		end
	end
end