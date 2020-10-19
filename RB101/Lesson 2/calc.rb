# creating a simple command line calculator

# ask the user for two numbers

# ask the user for the operation to perform

# perform the operation

# output the operation

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  if number == '0'
    return true
  elsif number.to_i != 0
    return true
  else 
    return false
  end
end

def valid_operator?(operator)
  [1, 2, 3, 4].include?(operator)
end

def operation_to_message(op)
  case op
  when 1
    "Adding"
  when 2
    "Subtracting"
  when 3
    "Multiplying"
  when 4
    "Dividing"
  end
end

num1 = nil
num2 = nil
operator = nil

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do
  loop do
    prompt("Enter your first number:")
    num1 = Kernel.gets().chomp()
    if valid_number?(num1)
      break
    else
      prompt("Not a valid number")
    end
  end

  loop do
    prompt("Enter your next number:")
    num2 = Kernel.gets().chomp()
    if valid_number?(num2)
      break
    else
      prompt("Not a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG

  loop do
    prompt(operator_prompt)
    operator = Kernel.gets().chomp().to_i()
    if valid_operator?(operator)
      break
    else
      prompt("Not a valid operator")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when 1
             result = num1.to_f + num2.to_f
           when 2
             result = num1.to_f - num2.to_f
           when 3
             result = num1.to_f * num2.to_f
           when 4
             result = num1.to_f / num2.to_f
           end

  prompt("The result is #{result}")

  prompt("Would you like to perform another operation? (type 'yes' or 'no')")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end
