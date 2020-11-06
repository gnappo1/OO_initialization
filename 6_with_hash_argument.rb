require 'pry'
#Execute this file by typing: ruby 6_with_hash_argument.rb

class Planet
    attr_reader :rot_time, :rev_time, :moons, :mass
    attr_accessor :name, :radius, :atmosphere, :age

    # We receive a hash as argument and extract from it specific attributes using the hash's keys. The order of the arguments won't matter!
    # The downside of this approach is that we have to know what keys the hash has (for what we know in week 3)
    # Metaprogramming will make this example much more efficient, wait for week 4! :)

    def initialize(hash)
        @age = 0
        @mass = hash[:mass]
        @name = hash[:name]
        @rot_time = hash[:rot_time]
        @rev_time = hash[:rev_time]
        @moons = hash[:moons]
        @radius = hash[:radius]
        @atmosphere = hash[:atm]
    end
    
   
end

#Now, when instantiating we can pass the information as a hash (notice that atm will not be provided and therefore be nil)
earth = Planet.new(name: "Earth", mass: 5.97, rot_time: 24, rev_time: 365, moons: 1, radius: 6378.1)
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=nil, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

#Now, when instantiating we can pass the information also as key-value pairs (notice that atm will not be provided and therefore be nil)
venus = Planet.new(name: "Venus",  mass: 4.87, rot_time: -5832.5, rev_time: 224.7, moons: 0, radius: 6052)
# => #<Planet:0x00007f9bad0ccd08 @age=0, @atmosphere=nil, @mass=4.87, @moons=0, @name="Venus", @radius=6052, @rev_time=224.7, @rot_time=-5832.5>

#Lets ask the instances for some information they have stored
p earth.name, earth.mass, earth.rot_time
p "---------------"
p venus.name, venus.mass, venus.rot_time

binding.pry