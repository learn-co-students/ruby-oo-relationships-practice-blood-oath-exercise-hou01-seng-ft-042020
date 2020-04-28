require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("Cult1", "Forest", 2010, "slogan1")
c2 = Cult.new("Cult2", "Compound", 2003, "slogan2")
c3 = Cult.new("Cult3", "City", 2020, "slogan3")

f1 = Follower.new("follower1", 20, "motto1")
f2 = Follower.new("follower2", 25, "motto2")
f3 = Follower.new("follower3", 26, "motto3")
f4 = Follower.new("follower4", 19, "motto4")

bo1 = BloodOath.new(c1, f4)
bo2 = BloodOath.new(c3, f2)
bo3 = BloodOath.new(c2, f1)
bo4 = BloodOath.new(c2, f3)
bo5 = BloodOath.new(c3, f1)
bo6 = BloodOath.new(c1, f2)
bo7 = BloodOath.new(c2, f4)
bo1.initiation_date = "2013-03-20"



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits