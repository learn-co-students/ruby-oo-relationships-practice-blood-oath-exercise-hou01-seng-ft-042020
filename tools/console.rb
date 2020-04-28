require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# follower = (name, age, life_motto)
f1 = Follower.new("Nick", 33, "Hell yeah")
f2 = Follower.new("Brian", 48, "Nope")
f3 = Follower.new("Kevin", 67, "Ride or Die")


# Cult = name, location, founding_year, slogan)
c1 = Cult.new("Wizards", "Buffalo", 1890, "Harry Potter is life")
c2 = Cult.new("Kingsmen", "Cheektowaga", 1957, "Ride or Die Bitches")

# BloodOath = (initiation_date, follower, cult)
b1 = BloodOath.new("1999-05-01", f2, c2)
b2 = BloodOath.new("1974-01-01", f3, c2)
b3 = BloodOath.new("2014-01-01", f1, c2)
b4 = BloodOath.new("2014-01-01", f1, c1)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits