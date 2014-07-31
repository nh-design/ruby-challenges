def my_method
puts "how many ice cubes do you want?"
ice_cube = gets.chomp.to_i
puts 'I will give you, ' + (ice_cube +3).to_s
end

my_method
