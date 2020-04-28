
class Cult
    attr_reader :founding_year
    attr_accessor :name, :location, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all 
    end

    def recruit_follower(add_follower)
        #takes in an argument of a follower instance and adds them to this cult's list of followers
        BloodOath.new("2020-04-20", add_follower, self)
    end

    def our_followers # ** I ADDED **
        #returns an array that lists all followers of this cult
        BloodOath.all.select {|bo| bo.cult == self}
    end

    def cult_population
        #returns an integer that is the number of followers in this cult
        our_followers.count
    end

    def self.find_by_name(find_name)
        #takes a string argument that is a name and returns a cult instance whose name matches that argument
        self.all.select {|cult| cult.name == find_name}
    end

    def self.find_by_location(find_location)
        #takes in a string argument that is a location and returns an array of cults that are in that location
        self.all.select {|cult| cult.location == find_location}
    end

    def self.find_by_founding_year(find_year)
        #takes an integer argument that is a year and returns all of the cults founded in that year
        self.all.select {|cult| cult.founding_year == find_year}
    end
    
end

