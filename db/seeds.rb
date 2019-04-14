# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   Room.create(name: "" , description: "" , path: [["",], [" ",]])
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#1
Room.create(name: "Room 1", description: "You Stand in the Center of a room with a door outside and 2 staircases", path: [["Go outside", 2], ["Use the stairs on the right", 3], [" Use stairs on the left", 4]])
#2
Room.create(name: "Garden", description: "You are in a green garden. you look up and see two balconies at different heights. Unusual.", path: [["Go back inside", 1]])
#3
Room.create(name: "Upper Balcony" , description: "You are on a balcony over a garden, to your left is another balcony slightly lower than this one" , path: [["Decend Stairs", 1], ["Jump off ledge", 2], ["Jump to the other balcony", 4]])
#4
Room.create(name: "Lower Balcony" , description: "You are on the lower of two balconies, above and to the right you see the upper balcony, below you see a garden" , path: [["Decend Stairs", 1 ], ["Jump Over Rails",2]])
