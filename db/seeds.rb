=begin
This file should contain all the record creation needed to seed the database with its default values.
The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Examples:
  Room.create(name: "" , description: "" , path: [["",], [" ",]])
   Room.create(
   name: "" ,

   description: "" ,

   action_text: [
   default: "",
   fail_require: "",
   pre_pickup: [],
   pickup: [],
   post_action: ""

 ],
   TODO: items table. pickup descriptions will be in the items table not the action text

   state: {}

   path: [{ text:"", main_path: #,
            chance: ##, chance_path: #,
            require: [""], add_state: "jumped" , del_state: "jumped"}

   room_items: [ "key", "penny" ]

   ])




   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
   Character.create(name: 'Luke', movie: movies.first)
=end


#1
Room.create(
  name: "Room",
  description: "You are in a room. There is a single door that leads outside and 2 staircases",
  action_text: {
    default:"You Stand in the Center of the room.",
    fail_require: "You try to open the door but it's locked",
    pre_pickup: ["On a table nearby you see a key.", " On the floor you see a shiny penny!" ],
    pickup: ["You walk over and grab the key off the table","You bend over and grab the penny off the ground"]},
  path: [
   {text: "Go outside", main_path: 2, require: ["Garden Key"]},
   {text:"Climb the stairs on the left", main_path: 4},
   {text:"Climb the stairs on the right", main_path: 3}],
  room_items: ["Garden Key", "A Shiny Penny"])


#2
Room.create(
  name: "Garden",
  description: "You are in a green garden.",
  action_text: {
    default: "There is a door on one wall. You look up and see two balconies at different heights. How odd.",
    fail_require: "You try to open the door but it's locked. Through a small window you can see a key inside on a table",
    post_action: "There is a door on one wall. You look up at the balconies, amazed you survived that jump.",

    },
  path: [{text: "Go back inside" , main_path: 1, require: "Garden Key"}]
)

#3
Room.create(
  name: "Upper Balcony" ,
  description: "You are on a balcony over a garden, to your left is another balcony slightly lower than this one" ,
  path: [
    {text:"Decend Stairs", main_path: 1},
    {text: "Jump off ledge", main_path: 2, chance: 10, chance_path: 5, add_state: "jumped"},
    {text: "Jump to the other balcony", main_path: 4, chance: 70, chance_path: 5}])

#4
Room.create(
  name: "Lower Balcony" ,
  description: "You are on the lower of two balconies, above and to the right you see the upper balcony, below you see a garden" ,
  path: [
    {text: "Decend Stairs" , main_path: 1 },
    {text: "Jump Over Rails", main_path: 2, chance: 50, chance_path: 5, add_state: "jumped"}
    ])

#5
Room.create(
  name: "Oops" ,
  description: "You clamber over the railing and prepare to jump, but before you can, you slip, hitting your head on the railing and falling to the garden below
  GAME OVER" ,
  path: [{ text: "Restart?", main_path: 1}])

#6
Room.create(name: "" , description: "" , path: [["",], [" ",]])

#7
Room.create(name: "Introduction",description: "You are an assassin hired by Prince Cedric. Your mark is his father, King Brom of The East. Currently, you are traveling with a caravan of traders to the Keep of Lorem to complete your mission.
  In the distance you can see the castle walls, what do you do?", path: [["Stay with the caravan", 8], ["Sneak away and wait for nightfall", ]])

#8
Room.create(name: "Stay with the caravan" , description: "You sit in the back of a merchant cart." , path: [["Talk to merchant", 9], ["Wait to arrive", ]])

#9
Room.create(name: "Talk to driver" , description: "Merchant: 'They say the king has been getting increasingly paranoid as of late, they won't let anyone in with a weapon anymore. If you have any, now would probably be the time to get rid of them." , path: [["Toss out dagger",], [" Say 'I don't listen to stupid merchants' ",]])

#10
Room.create(name: "The Castle Gates" , description: "As you arrive at the gates, two guards begin to search the caravan, they make their way to you and find... A DAGGER hidden under your clothes! You try to escape but a crossbowman on the wall above makes quick work of you.

  GAME OVER ", path: [["Restart?", 7]])

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
Room.create(name: "Scope out the defenses" , description: "You discretely make your way through shops and stalls, making note of the guards on patrol through town and on the walls. you see a tower leading onto the wall. Making your way around the edge of the town towards the Royal Residence you eventually find it, an inconspicuous door near the back of the palace. It should get you in if you can pick the lock." , path: [["Wait for nightfall", 17], ["Pick the lock now", 16, 70, 17]])
#16
Room.create(name: "Daytime Lockpicking" , description: "You start picking the lock, it's nothing special and you make quick work of it. You are about to stand up when the door swings open and slams into you face.
  You wake up lying on your back, guards approaching from both sides. A cook with a large pot stands over you. Before you can regain your senses, you are being dragged away to the dungeon.

  GAME OVER" , path: [["Restart?", 6]])
#17
Room.create(name: "Daytime Picking Blues" , description: "You start picking the lock, but it proves to be more difficult than it seemed at first glance. Before you can open the door, Someone shouts 'HEY YOU'RE NOT SUPPOSED TO BD HERE!' Guards Approach from both ends of the narrow alley. There's no escape this time. GAME OVER" , path: [["Restart?", 7]])

#18
Room.create(name: "Nighttime Lockpicking" , description: "You went back to the merchant caravan and helped them until nightfall. Now you head back to the door, watching for the torches of the guards" , path: [["", 1 , 70, 2], [" ",]])
