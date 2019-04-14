# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.create(name: "room1", description: "a boring room", path: [["go through door", 2]])
Room.create(name: "room2", description: "another boring room", path: [["go through door", 1]])

Room.create(name: "title" , description: "text" , path: [["words on button", 4], ["words on second button", 5]])
