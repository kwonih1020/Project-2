# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Visit.destroy_all
Rating.destroy_all


kwon = User.create!(email: "kwonih@vcu.edu", password: "1234567")

seoul = Visit.create!(name: "Seoul", country: "South Korea", photo: "http://travel.aarp.org/content/dam/travel/destination-images/south-korea/seoul/1400-hero-seoul-south-korea-traffic-night.jpg", diary: "It's was really fun! Add more later", user: kwon)

seoul_ratings = Rating.create!(recommendations_rating: "5", safety_rating: "5", comment: "Add later!", visit: seoul, user: kwon)
