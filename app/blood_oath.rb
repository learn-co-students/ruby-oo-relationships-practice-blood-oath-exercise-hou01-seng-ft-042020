require 'date'

class BloodOath

    attr_accessor :date, :cult, :follower
    @@all = []

    def initialize(date = Date.today, cult, follower)
        @date = date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

end
