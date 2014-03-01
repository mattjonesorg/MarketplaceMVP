class Listing < ActiveRecord::Base
  belongs_to :brand

  	validates :cardnumber, presence: true, uniqueness:true

end
