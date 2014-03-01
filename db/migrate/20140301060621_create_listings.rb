class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :cardnumber
      t.decimal :price, precision:15, scale:2 
      t.decimal :value, precision:15, scale:2 #gift cards from warren buffet supported.
      t.boolean :status
      t.references :brand, index: true
      t.timestamps 
    end
  end
end
