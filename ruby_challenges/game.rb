def prompt()
  print "> "
end

def gold_room()
  puts "This room is full of gold.  How much do you take?"

  prompt; next_move = gets.chomp 
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
end

#if user chose left they got this variable - now hopefully they input one of the options below
 
def bear_room()
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false
#next_move is taking the users input and if it matches == then they get the response defined.
  while true
    prompt; next_move = gets.chomp

    if next_move == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif next_move == "taunt bear" and bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif next_move == "open door" and bear_moved
      gold_room()
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room()
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  prompt; next_move = gets.chomp
# ifelse statements with the .include method will trigger if these are typed. if any trigger dead which is defined to stop the loop and exits out of the game.

  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room()
  end
end

def dead(why)
  puts "#{why}  Good job!"
  Process.exit(0)
end

#this is where it will start as indicated below with it being called at the end of the page here.
def start()
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"
#Here the user is prompted to choose right or left and naming it as the variable next_move and gets.chomp is reading the users input
  prompt; next_move = gets.chomp
#ifelse statements defined here. if its true that they choose left they get the bear room. elsif they choose right they get the cthulhu room, else(anything other than left or right)
  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulhu_room()
  else
    dead("You stumble around the room until you starve.")
  end
end

start()