class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
  @@all = []

  def initialize(name: name, location: location, founding_year: founding_year, slogan: slogan)
    @name = name 
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @minimum_age = 25
    @@all << self 
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    if follower.age >= minimum_age
      BloodOath.new(self, follower)
    else 
      "You're too young to join!!! Get OUT!"  
    end
  end
   
  def blood_oaths
    BloodOath.all.select do |blood_oath|
      blood_oath.cult == self
    end
  end
  
  def cult_population
    self.blood_oaths.length
  end

  def average_age
    (self.blood_oaths.inject(0) do |sum, blood_oath|
      sum + blood_oath.follower.age
    end / self.blood_oaths.length).to_f
  end

  def my_followers_mottos
    self.blood_oaths.map do |blood_oath|
      blood_oath.follower.life_motto
    end
  end
  
  

  def self.least_popular
    least_popular_cult = nil
    lowest_num_of_followers = 999999999
    self.all.each do |cult|
      if cult.blood_oaths.length < lowest_num_of_followers
        least_popular_cult = cult 
        lowest_num_of_followers = cult.blood_oaths.length
      end
    end
    least_popular_cult
  end 

  def self.most_common_location 
    locations = {}
    most_common_loc = nil
    most_cults_in_location = 0
    self.all.each do |cult|
      if locations[cult.location]
        locations[cult.location] += 1
      else 
        locations[cult.location] = 1
      end 
    end
    locations.each do |key, value|
      if most_cults_in_location < value 
        most_cults_in_location = value
        most_common_loc = key
      end
    end 
    most_common_loc
  end

  def self.find_by_name(cult_name)
    self.all.find do |cult|
      cult.name == cult_name
    end
  end

  def self.find_by_location(location)
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    self.all.select do |cult|
      cult.founding_year == founding_year
    end 
  end

end 