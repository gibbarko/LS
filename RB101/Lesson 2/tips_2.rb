# bad
=begin
name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name, try again:"
end

puts "Welcome #{name}!"
puts "What do you like to do?"
=end

name = 'johnson'

['kim', 'joe', 'same'].each do |fname|
  puts name
  puts fname
end

