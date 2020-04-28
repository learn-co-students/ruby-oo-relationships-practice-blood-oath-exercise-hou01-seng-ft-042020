class BloodOath
  attr_accessor :cult, :follower, :initiation_date
  @@all = []
  
  def initialize(cult, follower)
    @follower = follower
    @cult = cult
    @initiation_date = Time.now.strftime("%Y-%m-%d")
    @@all << self 
  end
  
  def self.all
    @@all
  end

  def self.first_oath
    @@all[0].follower
  end
  
end 