
class Cult
    attr_accessor :name, :location, :founding_year, :slogan
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

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end
    
    def population
        followers = BloodOath.all.select {|bloodOaths| bloodOaths.cult == self}
        followers.map {|followers| followers}.uniq.count
    end

    def self.find_by_name(cult)
        @@all.find {|cults| cults.name == cult}
    end

    def self.find_by_location(location)
        @@all.select {|cults| cults.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.select {|cults| cults.founding_year == year}
    end

end
