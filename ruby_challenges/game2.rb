def prompt()
print ">"
end


def treasure_room()
puts "You are now in small room that is packed with treasure!"
puts "You see Gold, Rubies, and tons of Silk!"
puts "What are you going to take as your reward?"
prompt; next_move.gets.chomp
if next_move == "Gold"
puts "You are a wise adventurer! Congrats on being rich!"
Process.Exit(0)

elsif next_move == "Rubies"
puts "Fancy! Now you can get that princess you've been pining after!"
Process.Exit(0)

elsif next_move == "Silk"
puts "You really like the way it feels when you rub it in your face..."

elsif next_move.include "All"
dead("You become exhausted with the weight of the treasure and trip over a rock in the cave hitting your head and die.")
end
end

def small_room()
puts "You see a very small door, and upon opening it notice its just big enough to crawl through."
puts "OH NO! You spot two eyes staring back at you in the dark!"
puts "What are you going to do now?"
prompt; next_move=gets.chomp

if next_move.include? "Flee"
puts "You are a coward!"
start()

elsif next_move.include? "Taunt"
dead("The eyes move closer...its a Goblin who takes your eyes and leaves you for dead in the tunnel!")

elsif next_move.include? "Crawl"
puts "You cautiously crawl into the tunnel, the eyes get closer and you notice its a small
kitten! AWW!"
treasure_room()

else
puts "Thats not going to work!"
end
end

def wizard_room()
puts "You see a large door that seems to be locked!"
puts "Whoa! A flash of light appeared and now there is an ugly wizard is now standing before you!"
wizard_moved = false
while true
prompt; next_move=gets.chomp

if next_move.include? "Fight"
dead("Wizard uses lightning flash and you are incinerated.")

elsif next_move == "Trick" and not wizard_moved
puts "He is so confused by your trickery he gives you the key instead of trying to out wit you"
wizard_moved = true

else
puts "Wizard is not amused."
end
end
end

def dead
Process.Exit(0)
end

def start()
puts "You are a brave adventurer and come upon a cave!"
puts "Upon entering you notice it is 
full of bats!"
puts "There are two paths, do you take the Left or Right?"
prompt; next_move=gets.chomp

if next_move == "Left"
wizard_room()

elsif next_move == "Right"
small_room()

else
dead("You step into quicksand and can't escape.")
end
end

start()