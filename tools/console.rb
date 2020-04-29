require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Cult1", "Location1", 2020, "Slogan1")
cult2 = Cult.new("Cult2", "Location1", 2018, "Slogan1")
cult3 = Cult.new("Cult3", "Location2", 1999, "Slogan2")
cult4 = Cult.new("Cult4", "Location3", 2007, "Slogan3")
follower1 = Follower.new("Follower1", 25, "motto1")
follower2 = Follower.new("Follower2", 33, "motto1")
follower3 = Follower.new("Follower3", 18, "motto2")
follower4 = Follower.new("Follower4", 43, "motto3")
bloodOath1 = BloodOath.new("2020-11-5", cult1, follower1)
bloodOath1 = BloodOath.new("2020-5-5", cult2, follower2)
bloodOath1 = BloodOath.new(cult2, follower1)
bloodOath1 = BloodOath.new(cult4, follower3)
bloodOath1 = BloodOath.new("2020-1-15", cult3, follower4)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
