require 'pry'

# 1
=begin
def interleave(arr1, arr2)
  new_arr = []
  i = 0
  (arr1.size + arr2.size).times do |x|
    if x.even? 
      new_arr << arr1[i] 
    elsif
      new_arr << arr2[i] 
      i += 1
    end
  end
  new_arr
end
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
=end

# 2
=begin
UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_case_count(str)
  uppercase_count = 0
  lowercase_count = 0
  neither_count = 0

  str.each_char do |char|
    if UPPERCASE.include?(char)
      uppercase_count += 1
    elsif LOWERCASE.include?(char)
      lowercase_count += 1
    else
      neither_count += 1
    end
  end
  { lowercase: lowercase_count, uppercase: uppercase_count,
    neither: neither_count }
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
=end

# 3
=begin
def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
=end

# 4
=begin
def swapcase(str)
  new_str = str.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  new_str.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
=end

# 5
=begin
def staggered_case(str)
  iterator = -1
  new_chars = str.chars.map do |char|
    if char =~ /[^a-zA-z]/
      char
    else 
      iterator += 1
      iterator.even? ? char.upcase : char.downcase
    end
  end
  new_chars.join
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
=end

# 7
=begin
def show_multiplicative_average(arr)
  total = arr.inject(:*)
  p "%.3f" % (total / arr.size.to_f)
end


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17])
=end

# 8
=begin
def multiply_list(arr1, arr2)
  multiplied_list = []
  arr1.each_with_index do |num, index|
    multiplied_list << num * arr2[index]
  end
  multiplied_list
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
=end

# 9
=begin
def multiply_all_pairs(arr1, arr2)
  results = []
  arr1.each do |num|
    arr2.size.times do |x|
      results << num * arr2[x]
    end
  end
  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
=end

# 10

def penultimate(str)
  arr_of_words = str.split
  arr_of_words[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'