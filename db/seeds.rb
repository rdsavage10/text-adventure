# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.create(name: "room1", description: "a boring room", link1: ["go through door", 2], link2: ["nowhere", 1])
Room.create(name: "room2", description: "another boring room", link1: ["go through door", 1], link2: ["nowhere", 2])
