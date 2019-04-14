# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   Room.create(name: "" , description: "" , path: [["",], [" ",]])
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.create(name: "room1", description: "A room with 3 doors", path: [["go through door to room 2", 2], ["go through door to room 3", 3], ["go through door to room 4", 4]])
Room.create(name: "room2", description: "A room with 1 door. this doesn't make spatial sense", path: [["go through the door", 1]])
Room.create(name: "room3" , description: "Another room with 3 doors" , path: [["go to room 1", 1], ["go to room 2", 2], ["go to room 4", 4]])
Room.create(name: "room4" , description: "a room with 2 doors." , path: [["go through door to room 3",3 ], ["go through door to room 2",2]])
