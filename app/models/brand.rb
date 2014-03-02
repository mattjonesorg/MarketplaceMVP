class Brand < ActiveRecord::Base
	validates :name, presence: true, uniqueness:{case_sensitive:false}

	def self.find_by_name(name) 
		where("name LIKE ?", "#{name}").first
	end
end
