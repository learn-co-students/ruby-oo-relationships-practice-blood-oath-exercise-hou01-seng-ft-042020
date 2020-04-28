
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

    def blood_oaths # ** I ADDED **
        #return an array of this follower's blood oaths
        BloodOath.all.select {|bo| bo.follower == self}
    end

    def cults
        #returns an array of this follower's cults
        blood_oaths.map {|bo| bo.cult}
    end

    def join_cult(new_cult)
        #takes in an argument of cult instance and adds this follower to the cult's list of followers
        BloodOath.new("2020-04-27", self, new_cult)
    end

    def self.of_a_certain_age(find_age)
        #takes an integer argument that is an age and returns an array of followers who are the given age or older
        self.all.select {|follower| follower.age >= find_age}
    end

end