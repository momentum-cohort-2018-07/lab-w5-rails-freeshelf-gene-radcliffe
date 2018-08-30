# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times{
    Book.create!(title: Faker::Book.title , author:Faker::StarWars.character, description: Faker::ChuckNorris.fact, url: Faker::Internet.url, user_id: rand(2...5) )
 }

 #User.create!(name: "Gene Radcliffe", email:"g_radcliffe82@hotmail.com", usertype:"admin", user_name:"gradcliffe82", password:"jugeroma")
 #User.create!(name: "Joey Inocencio", email:"joey@gmail.com", usertype:"guest", user_name:"joey123", password:"1234a")
 #User.create!(name: "Matthew Radcliffe", email:"matt@hotmail.com", usertype:"guest", user_name:"matt123", password:"1234b")
 #User.create!(name: "Rowena Radcliffe", email:"rowena@yahoo.com", usertype:"guest", user_name:"rose123", password:"1234c")