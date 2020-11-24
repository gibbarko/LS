# 1
=begin
nums = []

puts "Enter the 1st number:"
nums << gets.chomp.to_i

puts "Enter the 2nd number:"
nums << gets.chomp.to_i

puts "Enter the 3rd number:"
nums << gets.chomp.to_i

puts "Enter the 4th number:"
nums << gets.chomp.to_i

puts "Enter the 5th number:"
nums << gets.chomp.to_i

puts "Enter the 6th number:"
num6 = gets.chomp.to_i

includes = nums.include?(num6) ? 'appears' : 'does not appear'

puts "The number #{num6} #{includes} in #{nums}."
=end

# 2
=begin
OPERATORS = ['+', '-', '*', '/', '%', '**']

puts "Enter the first number:"
num1 = gets.chomp.to_i
puts "Enter the second number:"
num2 = gets.chomp.to_i

OPERATORS.each do |operator|
  answer = [num1, num2].reduce(operator)
  puts "#{num1} #{operator} #{num2} = #{answer}"
end
=end

# 3
=begin
puts 'Please write word or multiple words:'
words = gets.chomp

count = words.delete(' ').size

puts "There are #{count} characters in #{words}."
=end

# 4
=begin
def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15
puts multiply([5, 6], 3)

def to_the_power(num, power)
  current_num = num

  (power - 1).times do |_|
    loop_num = multiply(current_num, num)
    current_num = loop_num
  end
  current_num
end

puts to_the_power(4, 2)
puts to_the_power(3, 4)
=end

# 5
=begin
def xor?(arg1, arg2)
  !(arg1 && arg2) && (arg1 || arg2) ? true : false
end

puts xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?) 
=end

# 6
=begin
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
=end
=begin
def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
=end

# 10 

def palindromic_number?(num)
  num.digits == num.digits.reverse
end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true