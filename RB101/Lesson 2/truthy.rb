
=begin
if true
  puts 'hi'
else
  puts 'goodbye'
end

if false
  puts "hi"
else
  puts "goodbye"
end
=end

=begin
num = 5 
if (num < 10)
  puts "Small number"
else
  puts "Large number"
end

if num 
  puts "Valid number!"
else
  puts "Error!"
end
=end

if name = find_name
  puts "got a name"
else
  puts "couldn't find it"
end

name = find_name

if name && name.valid?
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end
