# 1
=begin
def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('hello', 3)
=end

# 2
=begin
def is_odd?(num)
  num % 2 != 0 ? true : false
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)
=end

# 3
=begin
def digit_list(num)
  arr = []
  num.to_s.each_char { |x| arr << x.to_i }
  return arr
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]
=end

# 4
=begin
def count_occurrences(arr)
  new_hash = {}
  arr.each do |element|
    if new_hash.has_key?(element.downcase)
      new_hash[element.downcase] += 1
    else
      new_hash[element.downcase] = 1
    end
  end

  new_hash.each { |k, v| puts "#{k} => #{v}"}
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
=end

# 5
=begin
def reverse_sentence(str)
  arr = str.split(' ').reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
=end

# 6
=begin
def reverse_words(str)
  arr = str.split.map  do |word|
          word.reverse! if word.length >= 5
          word
  end
          
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
=end

# 7
=begin
def stringy(num, zero = 1)
  string = ''
  if zero == 1
    num.times do |x|
      number = x.even? ? '1' : '0'
      string << number
    end
  elsif zero == 0
    num.times do |x|
      number = x.even? ? '0' : '1'
      string << number
    end
  end

  string
end

puts stringy(6)
puts stringy(6, 0)

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=end

# 8
=begin
def average(arr)
  arr.reduce(:+) / arr.size.to_f
end

puts average([1, 6])

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=end

# 9
=begin
def sum(int)
  int.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
=end

# 10

def calculate_bonus(int, bool)
  bool ? (int / 2) : 0
end

puts calculate_bonus(1000, false)
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000