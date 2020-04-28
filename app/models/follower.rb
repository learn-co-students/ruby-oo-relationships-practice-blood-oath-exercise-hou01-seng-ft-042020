class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []
  
  def initialize(name, age, life_motto)
    @name = name 
    @age = age
    @life_motto = life_motto
    @@all << self 
  end
  
  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |blood_oath|
      blood_oath.follower == self 
    end
  end

  def cults
    self.blood_oaths.map do |blood_oath|
      blood_oath.cult
    end
  end 

  def join_cult(cult)
    if self.age >= cult.minimum_age
      BloodOath.new(cult, self)
    else 
      "too young, young blood, go home."  
    end
  end 

  def my_cults_slogans
    self.cults.map do |cult|
      cult.slogan
    end
  end

  def fellow_cult_members
    fellow_members = []
    self.cults.map do |cult|
      cult_oaths = cult.blood_oaths
      followers = cult_oaths.map do |oath|
        oath.follower
      end
      fellow_members << followers
    end
    fellow_members.flatten.uniq
  end



  def self.find_most_active(array)
    most_active_follower = nil
    most_cults_joined = 0
    array.each do |follower|
      if follower.cults.length > most_cults_joined
        most_active_follower = follower 
        most_cults_joined = follower.cults.length
      end
    end
    most_active_follower
  end 

  def self.most_active 
    self.find_most_active(@@all)
  end

  def self.top_ten
    followers = self.all 
    top_ten = []
    while top_ten.length != 10 do 
      ## find most active
      most_active_follower = self.find_most_active(followers)
      top_ten << most_active_follower
      followers.delete(most_active_follower)
    end
    top_ten.length
  end 

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age == age
    end
  end
  
end 