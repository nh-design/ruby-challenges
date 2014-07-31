class Tea
def set_name=(name)
@name = name
end

def get_name
return @name
end

end

class Green < Tea
def oolong
return "oolong green tea"
end
end

class Herbal < Tea
def raspberry
return "raspberry leaf tea"
end
end

class Blacktea < Tea
def chai
return "Chai Black Tea"
end
end



my_green = Green.new
my_green.set_name= "Green"
green_name = my_green.get_name

my_herbal = Herbal.new
my_herbal.set_name= "Herbal"
herbal_name = my_herbal.get_name

my_blacktea = Blacktea.new
my_blacktea.set_name= "Black tea"
blacktea_name = my_blacktea.get_name

puts "Here is what I have for tea: #{green_name} tea is #{my_green.oolong}, #{blacktea_name} is #{my_blacktea.chai}, or I have #{herbal_name} tea which is #{my_herbal.raspberry}."

puts my_green.inspect
puts my_herbal.inspect
puts my_blacktea.inspect