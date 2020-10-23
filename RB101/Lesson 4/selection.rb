=begin
alphabet = 'abcdefghijklmnopqrstuvwxyz'
slected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    slected_chars << current_char
  end

  counter += 1
  break if counter == alphabet.size
end

p slected_chars
=end
=begin
fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do 
  current_element = fruits[counter]

  transformed_elements << current_element + 's'

  counter += 1
  break if counter == fruits.size
end

p transformed_elements
=end
=begin
def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  selected_chars
end

p select_vowels('the quick brown fox')      # => "euioo"

sentence = 'I wandered lonely as a cloud'
p select_vowels(sentence)         

number_of_vowels = select_vowels('hello world').size
p number_of_vowels
=end
=begin
def select_fruit(prod)
  arr = prod.keys
  fruits = {}
  counter = 0
  
  loop do
    current_prod = arr[counter]
    if prod[current_prod] == 'Fruit'
      fruits[current_prod] = 'Fruit'
    end

    counter += 1
    break if counter == arr.size
  end

  fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
=end
=begin
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

      numbers[counter] *= 2

    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]

p my_numbers
=end
=begin
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers 
=end


def multiply!(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

      numbers[counter] *= multiplier

    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply!(my_numbers, 3)
p my_numbers