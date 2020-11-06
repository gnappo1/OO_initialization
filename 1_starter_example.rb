require 'pry'
#execute this file by typing: ruby 1_starter_example.rb 

class Planet #always capitalized for class names
    
   
end

earth = Planet.new #=> #<Planet:0x00007ff28801db78> shows the class the object belongs to and the object_id
#there are no attributes setup at birth and therefore no need for the initialize
#our instances still have no behavior (methods)

binding.pry