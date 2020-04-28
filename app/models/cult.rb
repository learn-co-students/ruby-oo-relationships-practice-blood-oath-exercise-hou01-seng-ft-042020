# cult has many followers
class Cult
    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        save
    end
    
    def bloodoaths
        BloodOath.all.select {|bo| bo.cult == self}
    end

    def followers
        bloodoaths.map {|bo| bo.follower}
    end

    def cult_population
        followers.length
    end

    def self.find_by_name(cult_name)
        all.find {|cult| cult.name == cult_name}
    end

    def self.find_by_location(cult_location)
        all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(cult_year)
        all.select {|cult| cult.founding_year == cult_year }
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def average_age
        total_age = followers.reduce(0) { |sum, follower| sum + follower.age}
        total_age / followers.length
    end

    def my_followers_motto
        followers.nap {|follower| follower.life_motto}
    end

    def self.least_popular
        all.min_by {|cult| cult.followers.length}
    end

    def self.cult_locations
        locations = {}
        self.all.each do |cult|
          if !locations[cult.location]
            locations[cult.location] = 1
          else
            locations[cult.location] += 1
          end
        end
        return locations
    end
    
    def self.most_common_location
        location = cult_locations.max_by do |location, count|
          count
        end
        location[0]
    end
    
    def recruit_follower(follower)
        if follower.age >= self.minimum_age
          BloodOath.new(follower, self)
        else
          puts "Sorry, #{follower.name} is not yet old enough to join this cult."
        end
    end
    
end