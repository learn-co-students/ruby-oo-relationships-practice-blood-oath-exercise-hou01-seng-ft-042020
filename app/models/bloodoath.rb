# follower and cult have one bloodoath
class BloodOath
    attr_accessor :initiation_date, :cult, :follower

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(cult, follower)
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
        @cult = cult
        @follower = follower
        save
    end

    def self.first_oath
        oath_sort = self.all.sort_by do |oath|
          Time.parse(oath.initiation_date)
        end
        oath_sort[0].follower
      end
end