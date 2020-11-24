require 'pry'

# 1
=begin
def short_long_short(str1, str2)
  str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
=end

# 2

=begin
--input year
--determine century
----
--determine correct ending
--return century with correct ending
=end
=begin
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + suffix(century)
end

def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end

p century(2000) 
p century(2001) 
p century(1965) 
p century(256) 
p century(5) 
p century(10103) 
p century(1052) 
p century(1127) 
p century(11201) 
=end

# 3

=begin
--input year
--check that the year is even and not divisible by 100
----or even and divisible by 400
--return true or false
=end
=begin
def leap_year?(year)
  if year >= 1752
    year % 4 == 0 &&
    !(year % 100 == 0) ||
    (year % 400 == 0)
  else
    year % 4 == 0
  end
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
=end

# 5
=begin
def multisum(num)
  (1..num).inject(0) do |sum, x| 
    (x % 3 == 0 || x % 5 == 0) ? sum + x : sum + 0
  end
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
=end

# 6
=begin
def running_total(arr)
  new_arr = []
  arr.inject(0) do |sum, x| 
    new_arr << sum
    sum + x
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
=end

# 7
=begin
def string_to_integer(str)
  total = 0
  num = 0
  base = 0
  str.reverse.each_char do |char|
    case char
    when '1'
      num = 1
    when '2'
      num = 2
    when '3'
      num = 3
    when '4'
      num = 4
    when '5'
      num = 5
    when '6'
      num = 6
    when '7'
      num = 7
    when '8'
      num = 8
    when '9'
      num = 9
    end

    if char == str[-1]
      base += 1
    else
      base *= 10
    end

    total += num * base

  end
  total
end

p string_to_integer('4321') 
p string_to_integer('570') 
=end

# hexadecimal converter
=begin
DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
'5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10,
'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15}

def hexadecimal_to_integer(str)
  digits = str.downcase.chars.map { |x| DIGITS[x] }
  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('4D9f') 
=end
# 8
=begin
DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
'5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 } 
SIGNS = { '-' => -1, '+' => 1 }

def string_to_signed_integer(str)
  digits = str.downcase.chars.map { |x| DIGITS[x] }
  digits.delete(nil)
  sign = str.chars.map { |x| SIGNS[x] }
  sign.delete(nil)

  value = 0
  digits.each do |num|
    value = 10 * value + num
  end
  value *= sign[0] if !sign.empty?
  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')
=end
=begin
def integer_to_string(int)
  int.digits.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
=end

# 10 

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  sign = ''
  str = integer_to_string(number.abs)
  case number <=> 0
  when -1 then sign = '-'
  when +1 then sign = '+'
  end
  "#{sign}#{str}"
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

