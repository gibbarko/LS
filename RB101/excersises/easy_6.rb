require 'pry'

# 1
=begin
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=end

# 2
=begin
def remove_vowels(arr)
  arr.map { |str| str.delete('aeiouAEIOU') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=end

# 3
=begin
def reverse!(arr)
  left_item = 0
  right_item = -1
  until left_item >= (arr.size / 2) do 
    arr[left_item], arr[right_item] = arr[right_item], arr[left_item]
    left_item += 1
    right_item -= 1
  end
  arr
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []
=end

# 4
=begin
def reverse(arr)
  new_arr = []
  right_item = -1
  until new_arr.size == arr.size do 
    new_arr << arr[right_item]
    right_item -= 1
  end
  new_arr
end
=end
=begin
def reverse(arr)
  new_arr = []
  arr.each { |el| new_arr.unshift(el) }
  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]     
=end

# 5
=begin
def find_fibonacci_index_by_length(num)
  fib_nums = [1, 1]
  last_last = -2
  until fib_nums.last.digits.size == num do 
    fib_nums << fib_nums.last + fib_nums[last_last]
  end
  fib_nums.index(fib_nums.last) + 1
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
=end

# 4
=begin
def reverse!(arr)
  left_side = 0
  right_side = -1
  while -(right_side) <= arr.size / 2 do 
    arr[left_side], arr[right_side] = arr[right_side], arr [left_side]
    left_side += 1
    right_side -= 1
  end
  arr
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []
=end

# 5
=begin
def merge(arr1, arr2)
  merged_arr = []

  arr1.each do |el|
    merged_arr.include?(el) == false ? merged_arr << el : next
  end

  arr2.each do |el|
    merged_arr.include?(el) == false ? merged_arr << el : next
  end
  merged_arr
end
=end
=begin
def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
=end

# 6
=begin
def halvsies(arr)
  arr1 = []
  arr2 = []
  half = arr.size.even? ? (arr.size / 2) - 1 : arr.size / 2
  arr.each_with_index do |el, index|
    index <= half ? arr1 << el : arr2 << el
  end
  p arr1
  p arr2
  [arr1, arr2]
end


p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
=end

# 7
=begin
def find_dup(arr)
  checked_els = []
  dup = 0
  arr.each do |el|
    checked_els.include?(el) ? dup = el : checked_els << el
  end
  dup
end
=end
=begin
def find_dup(arr)
  arr.find { |x| arr.count(x) == 2}
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

=end

# 7 
=begin
def include?(arr, object)
  arr.map { |x| x == object }.any?(true) 
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=end

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |x|
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)