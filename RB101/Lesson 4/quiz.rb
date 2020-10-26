# 4
=begin
def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

puts snake('Hi there Johnny!')
=end
=begin
def camel(str)
  words = str.split(' ')
  counter = 0

  while counter < words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end

puts camel('Hey pal how goes it')
=end

=begin
def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    words[current_word].upcase!

    current_word += 1
    break if current_word == words.size
  end

  words.join('_')
end

puts upper_snake("hi there friend")

=end

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end

puts odd_numbers
