# 1
=begin
arr = ['10', '11', '9', '7', '8']

p arr.sort { |x, y| y.to_i <=> x.to_i }
=end

# 2
=begin
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |hash| hash[:published] }
=end

# 3
=begin
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].keys[0]
=end

# 4
=begin
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[-1] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2
=end

# 5
=begin
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each_value do |details|
  total_male_age += details['age'] if details['gender'] == 'male'
end

puts total_male_age

munsters.each do |k, v|
  puts "#{k} is a #{v["age"]} year old #{v["gender"]}."
end
=end

# 8
=begin
hsh = {first: ['the', 'quick'], 
      second: ['brown', 'fox'], 
      third: ['jumped'], 
      fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'a e i o u'

hsh.each do |_, arr|
  arr.each do |word|
    word.each_char { |letter| puts letter if vowels.include?(letter) }
  end
end
=end

# 9
=begin
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
p new_arr
p arr
=end

#10
=begin
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

increment = arr.map do |hsh|
  new_arr = {}
  hsh.each do |k, v|
    new_arr[k] = v + 1
  end
  new_arr
end

p increment
=end

# 11
=begin
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |sub_arr|
            sub_arr.select { |x| x % 3 == 0 }
          end

p new_arr

new_arr_reject = arr.map do |sub_arr|
                   sub_arr.reject { |num| num % 3 != 0 }
                 end

p new_arr_reject

=end

# 13
=begin
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

sorted = arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    odds = []
    odds << num if num.odd?
  end
end

p sorted

sorted2 = arr.sort_by do |sub_arr|
  sub_arr.select { |x| x.odd? }
end

p sorted2
=end

# 14
=begin
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []

hsh.each do |_, details|
  if details[:type] == 'fruit'
    new_arr << details[:colors].each do |str|
                str.capitalize!
              end
  elsif details[:type] == 'vegetable'
    new_arr << details[:size].upcase
  end
end

p new_arr
=end

# 15
=begin
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.all? do |_, sub_arr|
    sub_arr.all? do |num|
      num.even?
    end
  end
end

p new_arr
=end

# 16

HEXA = ['0', '1', '2', '3',	'4', '5', '6', '7',	'8', '9', 'a', 'b', 'c', 'd', 'e', 'f']

def uuid
  num1 = ''
  num2 = ''
  num3 = ''
  num4 = ''
  num5 = ''
  8.times { |_| num1 = num1 + HEXA.sample }
  4.times { |_| num2 = num2 + HEXA.sample }
  4.times { |_| num3 = num3 + HEXA.sample }
  4.times { |_| num4 = num4 + HEXA.sample }
  12.times { |_| num5 = num5 + HEXA.sample }
  puts "#{num1}-#{num2}-#{num3}-#{num4}-#{num5}"
  "#{num1}-#{num2}-#{num3}-#{num4}-#{num5}"
end

uui