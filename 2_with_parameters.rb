require 'pry'
#execute this file by typing: ruby 2_with_parameters.rb (read below to know why you see an error)

class Planet
    
    #initialize is a private, instance method
    def initialize(name, mass, rot_time, rev_time, moons, radius, atm)
        #on the left of the equal we have the name of the instance variable we want to create
        #on the right of the equal sign we have the name of the parameter we listed on line 8

        @age = 0 #since it always starts as 0, it does not have to be provided in the parameters list
        @mass = mass
        @name = name
        @rot_time = rot_time
        @rev_time = rev_time
        @moons = moons
        @radius = radius
        @atmosphere = atm

        return "It won't matter what I type here, the new instance is the only thing that will always be returned!"
    end
    
   
end
#we have to pass exactly 7 arguments or we will get an ArgumentError
earth_1 = Planet.new("Earth", 5.97, 24, 365, 1, 6378.1, true)
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=true, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

#since an argument is missing in the following line, pry will never be triggered and an exception will be thrown!
earth_2 = Planet.new("Earth", 5.97, 24, 365, 1, 6378.1)
#example_with_parameters.rb:5:in `initialize': wrong number of arguments (given 6, expected 7) (ArgumentError)
# fix the error if you want pry to run!!!

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