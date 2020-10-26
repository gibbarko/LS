# 1
=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}

flintstones.each_with_index do |item, index|
  hash[item] = index
end

puts hash

counter = 0

flintstones.each do |i|
  hash[i] = counter
  counter += 1
end

puts hash
=end

# 2
=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_sum = 0

# ages.each_value { |x| ages_sum += x }

p ages.values.inject(:+)

p ages_sum
p ages

ages.keep_if do |k, v|
  v < 100
end

p ages


p ages.values.min
=end

# 5
=begin
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  if name.start_with?('Be')
    puts flintstones.index(name)
  else
    next
  end
end

p flintstones

p flintstones.index { |name| name[0, 2] == "Be" }

flintstones.map! { |name| name = name[0, 3] }

p flintstones

=end

# 7
=begin
statement = "The Flintstones Rock"

freq = {}

statement.each_char do |letter|
  if letter == ' '
    next
  elsif freq.include?(letter)
    freq[letter] += 1
  else
    freq[letter] = 1
  end
end

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

puts result
puts freq
=end

# 9
=begin
def titlelize(str)
  arr = str.split(' ')
  arr.each { |word| word.capitalize! }
  title = arr.join(' ')
end

words = "the flintstones rock"

p titlelize(words)
=end

# 10 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_value do |value|
  value["age_group"] =  if value["age"] < 20
                        "kid"
                      elsif value["age"] > 20 && value['age'] < 100
                        "adult"
                      else
                        "senior"
                      end
end

puts munsters
