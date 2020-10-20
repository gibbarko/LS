=begin
USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate

FAVORITE_COLOR = 'taupe'

1.times do
  puts "I love #{FAVORITE_COLOR}"
end

loop do
  MY_TEAM = 'Pheonix Suns'
  break
end

puts MY_TEAM
=end

def longest_word(sentence)
  words = sentence.split
  saved_word = words[0]

  words.each do |word|
    if word.length >= saved_word.length
      saved_word = word
    end
  end

  saved_word
end

sen = "Why is this the correct answer?"

puts sen
 
puts longest_word(sen)

puts sen