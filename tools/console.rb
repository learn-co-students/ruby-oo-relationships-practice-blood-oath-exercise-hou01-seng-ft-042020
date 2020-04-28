require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_1 = Cult.new(
  name: "Flatiron Students",
  location: "Houston",
  founding_year: 1993,
  slogan: "get right!"
)
cult_2 = Cult.new(
  name: "Gaming Cult",
  location: "San Franciso",
  founding_year: 1800,
  slogan: "get good!"
)
cult_3 = Cult.new(
  name: "Writers Cult",
  location: "Austin",
  founding_year: 1600,
  slogan: "get writing!"
)
cult_4 = Cult.new(
  name: "Super Smash Bros Cult",
  location: "Houston",
  founding_year: 2000,
  slogan: "We tech those!!"
)

follower_1 = Follower.new("Cole", 10, "...it is what it is...")
follower_2 = Follower.new("Sally", 25, "Lets do some math!")
follower_3 = Follower.new("All", 55, "Time for a drink!")
follower_4 = Follower.new("Ally", 55, "Time for a drink!")
follower_5 = Follower.new("ly", 55, "Time for a drink!")
follower_6 = Follower.new("y", 55, "Time for a drink!")
follower_7 = Follower.new("A", 55, "Time for a drink!")
follower_8 = Follower.new("fgdg", 55, "Time for a drink!")
follower_9 = Follower.new("gfdsg", 55, "Time for a drink!")
follower_10 = Follower.new("sfg", 55, "Time for a drink!")
follower_11 = Follower.new("Allsfgsy", 55, "Time for a drink!")
follower_12 = Follower.new("Alsfgsly", 55, "Time for a drink!")

blood_oath_1 = BloodOath.new(cult_1, follower_9)
blood_oath_2 = BloodOath.new(cult_1, follower_2)
blood_oath_3 = BloodOath.new(cult_2, follower_3)
blood_oath_4 = BloodOath.new(cult_3, follower_4)
blood_oath_5 = BloodOath.new(cult_3, follower_5)
blood_oath_6 = BloodOath.new(cult_1, follower_6)
blood_oath_7 = BloodOath.new(cult_1, follower_7)
blood_oath_8 = BloodOath.new(cult_3, follower_8)
blood_oath_9 = BloodOath.new(cult_1, follower_9)
blood_oath_10 = BloodOath.new(cult_3, follower_10)
blood_oath_11 = BloodOath.new(cult_3, follower_1)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits