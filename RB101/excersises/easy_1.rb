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

