require 'pry'
#Execute this file by typing: ruby 7_with_self.rb

#Self is always the receiver of the method and refers to the current context!
class Planet
    attr_reader :rot_time, :rev_time, :moons, :mass
    attr_accessor :name, :radius, :atmosphere, :age

    def initialize(hash)
        #Since the initialize is an instance method, inside of it self refers to the instance just created
        #When we use a setter method, the receiver self always has to be explicitly typed or our program will think you're creating a local variable
        #The following line is the same as "@age = 0", but we delegate to the setter method the job to set the instance variable for us
        self.age = 0 
        @mass = hash[:mass] #Cannot use the writer cause we did not create it (see line 6)
        self.name = hash[:name]
        @rot_time = hash[:rot_time] #Cannot use the writer cause we did not create it (see line 6)
        @rev_time = hash[:rev_time] #Cannot use the writer cause we did not create it (see line 6)
        @moons = hash[:moons] #Cannot use the writer cause we did not create it (see line 6)
        self.radius = hash[:radius]
        self.atmosphere = hash[:atm]
    end
    
    def instance_method_example
        #Since this is an instance method, the following line will print out the receiver we invoked the method on
        puts self
    end
   
    def self.class_method_example #class methods start with self.
        #Since this is a class method, the following line will print out the class itself: Planet
        puts self
    end

    puts self #Outside of any methods but inside a class, self refers to the class itself!
    # Planet

end

#Now, when instantiating we can pass the information as a hash (notice that atm will not be provided and therefore be nil)
earth = Planet.new({name: "Earth", mass: 5.97, rot_time: 24, rev_time: 365, moons: 1, radius: 6378.1})
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=nil, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

puts "-------"
earth.instance_method_example #the receiver of the method is the instance earth, so that's what self is inside the method instance_method_example
#<Planet:0x00007ff91ba71838>
puts "-------"
Planet.class_method_example #the receiver of the method is the class, so that's what self is inside the method class_method_example
# Planet

binding.pry