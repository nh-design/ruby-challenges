puts "What is your birthdate? Write it in this format: MMDDYYYY"

birthdate = gets.chomp.to_i

birth_path_num = birth_path

message = get_message(birth_path)

puts message

def birth_path(birthdate)
number = birthdate[0] + birthdate[1] + birthdate[2] + birthdate[3] + birthdate[4] + birthdate[5] + birthdate[6] + birthdate[7]

number = number.to_s
number = number[0].to_i + number[1].to_i

if number > 9
number = number[0].to_i + number[1].to_i
end

return number
end

def get_message(birth_path)
case birth_path_num
when 1
puts "Your numberology number is #{birth_path_num}. \n One is a LEADER. RULED BY THE SUN."

when 2 
puts "Your numberology number is #{birth_path_num}. \n Two is a mediator, peace lover, and desires harmony. RULED BY THE MOON."

when 3
puts "Your numberology number is #{birth_path_num}. \n Three is sociable, friendly, outgoing. RULED BY JUPITER."

when 4 
puts "Your numberology number is #{birth_path_num}. \n Four is a worker. Practical, skilled, hard-working. RULED BY URANUS."

when 5 
puts "Your numberology number is #{birth_path_num}. \n Five is a freedom lover, intellectual, IDEA person. RULED BY MERCURY."

when 6
puts "Your numberology number is #{birth_path_num}. \n Six is a peace lover, loving, stable. RULED BY VENUS."

when 7 
puts "Your numberology number is #{birth_path_num}. \n Seven is a deep thinker. Spiritual vibration. RULED BY NEPTUNE."

when 8
puts "your numberology number is #{birth_path_num}.\n Eight is a manager. Strong, successful, material vibration. RULED BY SATURN."

when 9 
puts "Your numberology number is #{birth_path_num}. \n Nine is a teacher. Tolerant, impractical, sympathetic vibration. RULED BY MARS."

else
message = "Uh oh! Your birth path number isn't 1-9!"
end

end

