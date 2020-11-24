require 'pry'

# 1
=begin
def ascii_value(str)
  str.chars.inject(0) do |sum, char|
    sum + char.ord
  end
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
=end

# 2
=begin
def time_of_day(num_of_minutes)
  hours, minutes = num_of_minutes.abs.divmod(60)
 
  if num_of_minutes == 0
    hours = 0
    minutes = 0
  elsif num_of_minutes.negative?
    hours = 23 - hours
    minutes = 60 - minutes
  end

  while hours > 24 || hours < -24 do
    if hours > 24 
      hours -= 24
    elsif hours < -24
      hours += 24
    end
  end


  "#{"%02d" % hours}:#{"%02d" % minutes}"
end
=end
=begin
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hour, minute = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hour, minute)
end
  

p time_of_day(0) 
p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437) 
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

def after_midnight(time)
  minutes = (time[0, 2].to_i * MINUTES_PER_HOUR) + time[3, 2].to_i
  minutes = 0 if minutes == 1440
  minutes
end

def before_midnight(time)
  minutes = ((time[0, 2].to_i * MINUTES_PER_HOUR) - time[3, 2].to_i)
  minutes = 0 if minutes == 1440
  minutes
end

p after_midnight('00:00') 
p before_midnight('00:00') 
p after_midnight('12:34') 
p before_midnight('12:34') 
p after_midnight('24:00') 
p before_midnight('24:00') 

=end

# 4
=begin
def swap(str)
  arr = str.split

  arr.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end

  arr.join(' ')
end
=end
=begin
def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') 
p swap('Abcde') 
p swap('a') 

=end


# 5

ALPHABET = ('a'..'z').to_a
=begin
def cleanup(str)
  str_arr = str.chars

  last_char = 'a'

  cleaned_str = str_arr.map do |char|
    # binding.pry
    if ALPHABET.include?(char)
      last_char = char
      char
    elsif ALPHABET.include?(last_char) == false && ALPHABET.include?(char) == false
      last_char = char
      ''
    else
      last_char = char
      ' '
    end
    #  binding.pry
  end

  cleaned_str.join
end

=end
=begin
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") 
=end

# 6
=begin
def word_sizes(text)
  word_size_count = Hash.new(0)
  text.split.each do |word|
    word_size_count[word.size] += 1
  end
  word_size_count
end

=begin
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
=end
=begin
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=end

# 7 
=begin
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    word_exlcuding_nonletters = word.gsub(/[^a-z]/i, '')
    counts[word_exlcuding_nonletters.size] += 1
  end
  counts
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
=end

# 8
=begin
ALPHABETIC_NUMBERS = %w( 
  zero, one, two, three, four, five, six, seven, eight, 
  nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
  sixteen, seventeen, eighteen, nineteen 
  )

def alphabetic_number_sort(numbers)
  alpha_numbers = numbers.map do |x|
                    ALPHABETIC_NUMBERS[x]
                  end

  sorted_nums = alpha_numbers.sort.map do |num|
                  ALPHABETIC_NUMBERS.find_index(num)
                end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
=end

# 9
=begin
def crunch(str)
  crunched_str = ''
  last_letter = ''
  str.each_char do |char|
    crunched_str << char if char != last_letter
    last_letter = char
  end
  crunched_str
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=end

# 10
=begin
def print_in_box(str)
  width = str.size + 2
  puts '+' + '-' + '-' * (width - 2) +'-' + '+'
  puts '|' + ' ' * width + '|'
  puts '|' + ' ' + str + ' ' + '|'
  puts '|' + ' ' * width + '|'
  puts '+' + '-' + '-' * (width - 2) +'-' + '+'
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')
=end

#11






def iq_test(numbers)
  digits = numbers.split.map { |x| x.to_i }
  even_count = digits.select { |x| x if x.even? }
  if even_count.size > 1
    odd = digits.select { |x| x.odd? }
    odd[0]
  else
    even = digits.select { |x| x.even? }
    even[0]
  end
end

p iq_test("1 2 2")
p iq_test("2 4 7 8 10")