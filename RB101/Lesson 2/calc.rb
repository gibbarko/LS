#creating a simple command line calculator

# ask the user for two numbers

# ask the user for the operation to perform

# perform the operation

# output the operation

Kernel.puts("Welcome to Calculator!")

Kernel.puts "Enter your first number:"
num1 = Kernel.gets().chomp().to_f()
Kernel.puts "Enter your next number:"
num2 = Kernel.gets().chomp().to_f()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp().to_i()

if operator == 1
  result = num1 + num2
elsif operator == 2
  result = num1 - num2
elsif operator == 3
  result = num1 * num2
elsif
  result = num1 / num2
end

Kernel.puts("The result is #{result}")