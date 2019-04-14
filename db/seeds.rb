# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   Room.create(name: "" , description: "" , path: [["",], [" ",]])
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#1
Room.create(name: "Room 1", description: "You Stand in the Center of a room. There is a single door that leads outside and 2 staircases", path: [["Go outside", 2], [" Use stairs on the left", 4], ["Use the stairs on the right", 3]])
#2
Room.create(name: "Garden", description: "You are in a green garden. you look up and see two balconies at different heights. Unusual.", path: [["Go back inside", 1]])
#3
Room.create(name: "Upper Balcony" , description: "You are on a balcony over a garden, to your left is another balcony slightly lower than this one" , path: [["Decend Stairs", 1], ["Jump off ledge", 2, 10, 5], ["Jump to the other balcony", 4, 70, 5]])
#4
Room.create(name: "Lower Balcony" , description: "You are on the lower of two balconies, above and to the right you see the upper balcony, below you see a garden" , path: [["Decend Stairs", 1 ], ["Jump Over Rails",2, 50, 5]])
#5
Room.create(name: "Oops" , description: "You clamber of the railing and prepare to jump, but before you can, you slip, hitting your head on the railing and falling to the garden below
  GAME OVER" , path: [["Restart?", 1]])

#6
Room.create(name: "" , description: "" , path: [["",], [" ",]])

#7
Room.create(name: "Introduction",description: "You are an assassin hired by Prince Cedric. Your mark is his father, King Brom of The East. Currently, you are traveling with a caravan of traders to the Keep of Lorem to complete your mission.
  In the distance you can see the castle walls, what do you do?", path: [["Stay with the caravan", 7], ["Sneak away and wait for nightfall", ]])

#8
Room.create(name: "Stay with the caravan" , description: "You sit in the back of a merchant cart." , path: [["Talk to merchant", ], ["Wait to arrive", ]])

#9
Room.create(name: "Talk to driver" , description: "Merchant: 'They say the king has been getting increasingly paranoid as of late, they won't let anyone in with a weapon anymore. If you have any, now would probably be the time to get rid of them." , path: [["Toss out dagger",], [" Say 'I don't listen to stupid merchants' ",]])

#10
Room.create(name: "The Castle Gates" , description: "As you arrive at the gates, two guards begin to search the caravan, they make their way to you and find... A DAGGER hidden under your clothes! You try to escape but a crossbowman on the wall above makes quick work of you.

  GAME OVER ", path: [["Restart?", 6]])

#11
Room.create(name: "Toss your dagger" , description: "You throw your dagger into the bushes somewhere out of the cart. Hopefully that wasn't a big mistake.." , path: [["to the gates",]])

#12
Room.create(name: "The Gates" , description: "As you arrive at the gates, two guards begin to search the caravan, they make it to you and find... nothing. They let you through.
  As you're walking through the gates, you hear shouting, a young man near the back of the caravan was caught with a blade. A fight breaks out between him and the guards." , path: [["Join the fight",], ["Go to the market inside",]])

#13
Room.create(name: "Joining the fight" , description: "Never one to turn down a good fight, you roll up your sleeves and help the poor bastard out. A brawl ensues, you knock out one guard with a solid punch to the face. Soon a group of guards from inside are barreling through the gates. Some merchants join and for a while you have the upper hand. *THWACK* The merchant next to you drops to his knees, a crossbow bolt sticking out of his chest. You look up to see a line of bowmen taking aim. The last thing you see is a bolt sailing directly at your head." , path: [["Restart?", 6]])

#14
Room.create(name: "The market" , description: "You have a mission to complete, you can't risk getting caught to help anyone. You take one look back to find the young man, nose broken, being dragged away to the dungeon. You blend into the crowd and consider what to do next." , path: [["Find a way into the palace",], ["Look for a weapon",]])

#15
Room.create(name: "Scope out the defenses" , description: "You discretely make your way through shops and stalls, making note of the guards on patrol through town and on the walls. you see a tower leading onto the wall. Making your way around the edge of the town towards the Royal Residence you eventually find it, an inconspicuous door near the back of the palace. It should get you in if you can pick the lock." , path: [["Wait for nightfall",], ["Pick the lock now",]])
#16
Room.create(name: "Daytime Lockpicking" , description: "You start picking the lock, it's nothing special and you make quick work of it. You are about to stand up when the door swings open and slams into you face.
  You wake up lying on your back, guards approaching from both sides. A cook with a large pot stands over you. Before you can regain your senses, you are being dragged away to the dungeon.

  GAME OVER" , path: [["Restart?", 6]])
#17
  Room.create(name: "" , description: "" , path: [["", 1 , 70, 2], [" ",]])
