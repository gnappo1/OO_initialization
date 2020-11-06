require 'pry'
#execute this file by typing: ruby 3_with_default_values.rb

class Planet

    # In order for us to give flexibility with the number of arguments we use default arguments!
    # So in the parameters list we use the assignment operator and set a default value in case that argument is not provided upon initialization
    
    def initialize(name, mass, rot_time, rev_time, moons, radius, atm = true) #atm is a default argument
    
        @age = 0
        @mass = mass
        @name = name
        @rot_time = rot_time
        @rev_time = rev_time
        @moons = moons
        @radius = radius
        @atmosphere = atm
    end
    
   
end
#we have to pass exactly 6 or 7 arguments or we will get an ArgumentError
# if we do provide a value for atm than that value will be used
earth_1 = Planet.new("Earth", 5.97, 24, 365, 1, 6378.1, false)
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=false, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

# if we do NOT provide a value for atm than the default value true will be used
earth_2 = Planet.new("Earth", 5.97, 24, 365, 1, 6378.1)
# => #<Planet:0x00007f809d8ec478 @age=0, @atmosphere=true, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365,

#our instances still have no behavior (methods)
binding.pry

# Unit System:

#name (string)
#age (integer)
#radius (km)
#atmosphere (bool)
#rot_time (hrs)
#rev_time (days)
#moons (integer)
#mass (10^24 kg)