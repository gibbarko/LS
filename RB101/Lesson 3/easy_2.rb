# 2
=begin
munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

puts ages
=end

# 4
=begin
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.include?("Dino")
=end

# 5 / 6 / 7
=begin
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flinstones

flinstones.push("Dino", "Hoppy")
p flinstones
=end

# 8
=begin
advice = "Few things in life are as important as house training your pet dinosaur."

new_advice = advice.slice("house training your pet dinosaur.")

p advice
p new_advice
=end

# 9
=begin
statement = "The Flintstones Rock!"

p statement.count "t"
=end

# 10

title = "Flintstone Family Members"

puts title.center(40)