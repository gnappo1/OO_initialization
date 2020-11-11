require 'pry'
#Execute this file by typing: ruby 7_with_self.rb

#Self is always the receiver of the method and refers to the current context!
class Planet
    attr_reader :rot_time, :rev_time, :moons, :mass
    attr_accessor :name, :radius, :atmosphere, :age
    @@all = [] 

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
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
    
    def self.planets_with_atmosphere_and_rot_time_over_50_and_sorted_by_name
        self.all.select do |planet|
            planet.atmosphere && planet.rot_time > 50
        end.sort_by(&:name)
    end

    puts self #Outside of any methods but inside a class, self refers to the class itself!
    # Planet

end

#Now, when instantiating we can pass the information as a hash (notice that atm will not be provided and therefore be nil)
earth = Planet.new({name: "Earth", mass: 5.97, rot_time: 24, rev_time: 365, moons: 1, radius: 6378.1, atm: false})
earth_2 = Planet.new({name: "Earth 2", mass: 5.77, rot_time: 56, rev_time: 365, moons: 1, radius: 6378.1, atm: true})
earth_3 = Planet.new({name: "New Earth 3", mass: 5.77, rot_time: 59, rev_time: 365, moons: 1, radius: 6378.1, atm: true})
# => #<Planet:0x00007fa30b116358 @age=0, @atmosphere=nil, @mass=5.97, @moons=1, @name="Earth", @radius=6378.1, @rev_time=365, @rot_time=24>

puts "-------"
# earth.instance_method_example #the receiver of the method is the instance earth, so that's what self is inside the method instance_method_example
#<Planet:0x00007ff91ba71838>
puts "-------"
# Planet.class_method_example #the receiver of the method is the class, so that's what self is inside the method class_method_example
# Planet

binding.pry