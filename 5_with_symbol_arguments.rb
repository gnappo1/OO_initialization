require 'pry'
#execute this file by typing: ruby 5_with_symbol_arguments.rb (read below to know why you see an error)

class Planet
    attr_reader :rot_time, :rev_time, :moons, :mass
    attr_accessor :name, :radius, :atmosphere, :age

    # We said the order of the arguments provided to the new class method on instantiation matters and is dicated by the order of the parameters listed in the initialize
    # In order for us to pass the information in any order when instantiating an object we can use symbols

    def initialize(name:, radius:, atm: true, rot_time:, rev_time:, moons:, mass:)
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

#now, when instantiating we have to pass the information as key-values or we get an ArgumentError
earth = Planet.new(name: "Earth", mass: 5.97, rot_time: 24, rev_time: 365, moons: 1, radius: 6378.1)
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=false, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

#let's see what happens if we pass regular arguments and not key-value pairs
venus = Planet.new("Venus", 4.87, -5832.5, 224.7, 0, 6052)
# 5_with_symbol_arguments.rb:10:in `initialize': wrong number of arguments (given 6, expected 0; required keywords: name, radius, rot_time, rev_time, moons, mass) (ArgumentError)
# fix the error if you want pry to run

#lets ask the instances for some information they have stored
p earth.name, earth.mass, earth.rot_time
p "---------------"
p venus.name, venus.mass, venus.rot_time

binding.pry