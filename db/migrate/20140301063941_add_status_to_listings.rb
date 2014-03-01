class AddStatusToListings < ActiveRecord::Migration
  def change
  	change_column :listings, :status, :string, default: "Submitted"
  end
end
