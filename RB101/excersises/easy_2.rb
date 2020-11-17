# 1
=begin
def age(name = "Teddy")
  puts "#{name} is #{rand(20..200)} years old!"
end

age

age("Gibb")
=end

# 2
=begin
def to_feet(area)
  area * 10.7639
end

def calc_area(width, length)
  width * length
end

puts "Enter the width of the room in meters:"
w = gets.chomp.to_i

puts "Enter the length of the room in meters:"
l = gets.chomp.to_i

puts "The area of your room is #{calc_area(w, l)} square meters (#{to_feet(calc_area(w, l))} square feet)."
=end

# 3
=begin
puts "What is the bill?"
bill = gets.chomp.to_f 

puts "What is the tip percentage?"
tip_prct = gets.chomp.to_f / 100

tip = (bill * tip_prct).round(2)
total = bill + tip

puts "The tip is $#{'%.2f' % tip}" 
puts "The total is $#{'%.2f' % total}"
=end

# 4
=begin
puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retirement_age = gets.chomp.to_i

year = Time.now.year

years_left_working = retirement_age - age

retirement_year = year + years_left_working

puts "It is #{year}. You will retire in #{retirement_year}."
puts "You only have #{years_left_working} years to go!"
=end

# 5
=begin
def screaming?(word)
  word.reverse.start_with?('!')
end

puts "What is your name?"
name = gets.chomp!

if screaming?(name)
  puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}!"
end
=end

# 6
=begin
99.times { |x| puts x if x.even?}

x = 2
while x <= 99
  puts x
  x += 2
end
=end

# 8
=begin
puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

operator = if operation == 'p'
              "product"
           elsif operation == 's'
              "sum"
           end


def sum(x)
  (1..x).reduce(:+)
end

def product(x)
  (1..x).reduce(:*)
end

total = 0

if operation == 's'
  total = sum(num)
elsif operation == 'p'
  total = product(num)
else
  puts "Oops. Unknown operation."
end

puts "The #{operator} of the integers between 1 and #{num} is #{total}." if operation == 'p' || operation == 's'
=end

# 9

