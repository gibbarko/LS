=begin
arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

p arr
=end
=begin
loop do number = rand(1..10)
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
=end
=begin
counter = 5

loop do 
  puts 'Hello'
  counter -= 1
  break if counter == 0
end
=end
=begin
counter = 0

loop do 
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end
=end
=begin
alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end
=end
=begin
colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do 
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end
=end
=begin
objects = ['hello', :key, 10, [], nil, true]
counter = 0

loop do
  break if counter == objects.size
  puts objects[counter].class
  counter += 1
end
=end
=begin
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
=end

def next_bigger(num)
  arr = num.digits.reverse
  i = -1
  z = -2

  until -z > arr.length
    if arr[i] > arr[z]
      arr[i], arr[z] = arr[z], arr[i]
      return arr.join('').to_i
    else 
      i -= 1
      z -= 1
    end
  end
  -1
end
p next_bigger(513)