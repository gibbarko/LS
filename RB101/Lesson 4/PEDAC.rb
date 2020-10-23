# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

=begin
method:
-accept 1 argument that is a string
-check that the argument is a string
-if it is split the string into an array of words
-iterate through the array and check if each word equals itself reversed
-if yes -- change the word to uppercase
-join the array back into a sentence
-return the new sentence
=end


# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=begin
Input: string
Output: Array of substrings
Rules:
    Explicit requirements:
      - must return all substrings that are palindromes in a new array
      - case sensitive
    Implicit requirements:
      - an empty strng should return an empty array
      - if there are no palindromes return an empty array
=end

=begin
substring
  accept a string as an argument
  iterate 
=end
=begin
def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= (str.length - 2))
    chars = 2
    while (chars <= str.length - starting_index)
      substring = str[starting_index, chars]
      result << substring
      chars += 1
    end
    starting_index += 1
  end
  return result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substr|
    result << substr if is_palindrome?(substr)
  end
  result
end

p palindrome_substrings("supercalifragilisticexpialidocious")
p palindrome_substrings("abcddcbA")
p palindrome_substrings("palindrome")
p palindrome_substrings("")

=end

=begin
  - sequence of intergers
  - begins with two 
    - 2
      4 6
      8 10 12 
      14 16 18 20
      22...
  - integers are consecutive 
  - sequence is grouped into rows
  - each row is incrementatlly larger
  - row 'number' == number of elements in that row
  - Input is a single integer
    - identifies a row that is a subset of integers
  - Output is a single integer that represents the sum in a a row identified by the input


  START - find starting number

    input = int - row number # from row number we need to find the first number in that row

    new_number = int.times { |x| }

=end

def find_starting_num(int)
  new_number = 2
  int.times { |x| new_number += (x * 2) }
  new_number
end

def row_sum(int)
  start_num = find_starting_num(int)
  sum = 0
  int.times { |x| sum += (start_num + (x * 2)) }
  sum
end


p find_starting_num(4)
p find_starting_num(3)
p find_starting_num(2)
p find_starting_num(1)

p row_sum(4)
p row_sum(3)
p row_sum(2)
p row_sum(1)
p row_sum(101)