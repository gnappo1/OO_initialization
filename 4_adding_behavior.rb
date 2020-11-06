require 'pry'
#execute this file by typing: ruby 4_adding_behavior.rb

#lets add some behavior for our instances by creating instance methods with the macros: attr_reader, attr_writer and attr_accessor
#the name of the macro HAS TO match the name of the instance variable, if any, inside the initialize
class Planet
    attr_reader :rot_time, :rev_time, :moons, :mass #attributes that we only want to read/retrieve
    attr_accessor :name, :radius, :atmosphere, :age #attributes that we want to be able to reset in the future

    def initialize(name, mass, rot_time, rev_time, moons, radius, atm = true) 

        @age = 0 #since it always starts as 0, it does not have to be provided in the parameters list
        @mass = mass
        @name = name
        @rot_time = rot_time
        @rev_time = rev_time
        @moons = moons
        @radius = radius
        @atmosphere = atm
    end
    
   
end

earth = Planet.new("Earth", 5.97, 24, 365, 1, 6378.1)
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=false, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

venus = Planet.new("Venus", 4.87, -5832.5, 224.7, 0, 6052)
# => #<Planet:0x00007f809d8ec478 @age=0, @atmosphere=true, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365,

#lets ask the instances for some information they have stored
p earth.name, earth.mass, earth.rot_time
p "---------------"
p venus.name, venus.mass, venus.rot_time

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