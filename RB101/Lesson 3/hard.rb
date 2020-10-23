# 1
=begin
if false
  greeting = 'hello world'
end

puts greeting
=end

# 2
=begin
greetings = { a: 'hi'}
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greetings
=end

# 3
=begin
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
=end

# 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    return false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    is_an_ip_number?(word) ?
    break unless is_an_ip_number?(word)
  end
end
