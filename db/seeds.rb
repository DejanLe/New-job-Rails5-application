# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.where(name: "Ruby/Ruby on Rails").first_or_create(name: "Ruby/Ruby on Rails")
Category.where(name: "Django/Python").first_or_create(name: "Python Django")
Category.where(name: "Javascript").first_or_create(name: "Javascript")

location = [
	"Denver, CQ",
	"San Frncisco, CA",
	"New York, NY",
	"Atlanta, GA"
]

User.where(email: "jobs.example.com").first_or_create(email: "Bob Green", password: "pw")

10.times do 
	User.create(email: Faker::Internet.email, password: "pw")
end

50.times do 
	Gig.create(name: Faker::Name.title,
		description: Faker::Lorem.paragraph(2),
		budget: rand(200..3000),
		location: location.sample,
		user_id: 1,
		category_id: rand(1..3)
		)	
end