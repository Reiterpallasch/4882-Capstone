# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#============================
#Event seed data

Event.create!(location: "University of Memphis", description: "dog owner meeting", time: "2019-5-20 15:00")
Event.create!(location: "Botanic Garden", description: "cat owner meeting", time: "2019-6-20 15:00")
Event.create!(location: "Somewhere in Memphis", description: "pet owner meeting", time: "2019-7-20 15:00")
Event.create!(location: "Anywhere is ok", description: "just meeting", time: "2019-8-20 15:00")
Event.create!(location: "No idea", description: "dog racing", time: "2019-9-20 15:00")

user1 = User.create(email: "test@google.com" , password: "google" , admin: true)
user1.pets.create(name: 'mimi', age: 3, gender: 'female')
user1.pets.create(name: 'mino', age: 2, gender: 'male')
user1.pets.create(name: 'nana', age: 1, gender: 'female')


