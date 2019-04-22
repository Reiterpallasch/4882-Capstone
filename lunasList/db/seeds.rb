# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#============================
#Event seed data

Event.create!(title:"Dog owner meeting",location: "University of Memphis - 3720 Alumni Ave, Memphis, TN 38152", description: "When you want to really spoil your dog, or just meet other dog owners who are as crazy about their pets as you, there's no better place than a dog event. ", time: "2019-5-16 15:00")
Event.create!(title:"Cat owner meeting",location: "Botanic Garden - 750 Cherry Rd, Memphis, TN 38117", description: "When you want to really spoil your dog, or just meet other dog owners who are as crazy about their pets as you, there's no better place than a dog event.", time: "2019-6-17 15:00")
Event.create!(title:"Pet owner meeting",location: "Somewhere in Memphis", description: "When you want to really spoil your dog, or just meet other dog owners who are as crazy about their pets as you, there's no better place than a dog event.", time: "2019-7-18 15:00")
Event.create!(title:"Pet Cosplay",location: "Anywhere is ok", description:"When you want to really spoil your dog, or just meet other dog owners who are as crazy about their pets as you, there's no better place than a dog event.", time: "2019-8-19 15:00")
Event.create!(title:"Pet Dating",location: "Shelby Farms Park -  6903 Great View Drive North, Memphis, TN 38134", description: "When you want to really spoil your dog, or just meet other dog owners who are as crazy about their pets as you, there's no better place than a dog event.", time: "2019-9-20 15:00")

user1 = User.create(email: "test@google.com" , password: "google" , admin: true)
user1.pets.create(name: 'mimi', age: 3, gender: 'female')
user1.pets.create(name: 'mino', age: 2, gender: 'male')
user1.pets.create(name: 'nana', age: 1, gender: 'female')
