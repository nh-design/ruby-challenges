def always_three(number2)
    (((number2+ 5) * 2 - 4) / 2 - number2)
end

puts "Type any number"
 
first_number = gets.to_i
 
puts "Always " + always_three(first_number).to_s
