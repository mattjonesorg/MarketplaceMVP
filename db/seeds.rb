# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.create ([
		{name: "Starbucks", id: 1},
		{name: "Target", id: 2},
		{name: "Home Depot", id: 3},
		{name: "Menards", id: 4},
		{name: "Lowes", id: 5},
		{name: "Jewel", id: 6},
		{name: "Maggiano's", id: 7},
		{name: "Chi-Tung", id: 8},
		{name: "Potbelly", id: 9},
		{name: "Bed, Bath, and Beyond", id: 10}
	])

Listing.create([
		{brand_id: 1, cardnumber: "ABC123", status:"Approved", price: 5.00, value: 10.00 },
		{brand_id: 2, cardnumber: "123456", status:"Approved", price: 20.00, value: 25.00 },
		{brand_id: 3, cardnumber: "HD123", status:"Approved", price: 20.00, value: 100.00 },
		{brand_id: 3, cardnumber: "HD456", status:"Approved", price: 20.00, value: 50.00 },
		{brand_id: 3, cardnumber: "HD789", status:"Approved", price: 20.00, value: 25.00 },
		{brand_id: 4, cardnumber: "654321", status:"Approved", price: 20.00, value: 25.00 }
	])