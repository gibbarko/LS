=begin
--Welcome the user and ask for a name
--Ask for the loan amount (p)
--Ask for the APR
--Ask for the loan duration (years)
----translate to months (n)

--calculate 
----monthly interest rate
      APR / 12 (j)
----loan duration in months
      loan length / 12 (n)
----monthly payment (m)
      m = p * (j / (1 - (1 + j)**(-n)))
=end

def valid_number?(x)
  if x == '0'
    true
  elsif x.to_i != 0
    true
  else
    false
  end
end

puts "Hello, welcome to the car loan calculator! What is your name?"
name = ''
loop do
  name = gets.chomp
  if name.empty?
    puts "That is not a valid name. Please enter your name:"
  else
    break
  end
end

puts "Hi there, #{name}"

loop do
  puts "What is the total amount of your loan?"
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else 
      puts "That is not a valid number! Try again:"
    end
  end



  puts "What is the Annual Percentage Rate (APR)? Please use whole numbers i.e. for 5% write '5'"
  loan_APR = ''
  loop do
    loan_APR = gets.chomp
    if valid_number?(loan_APR)
      loan_APR = loan_APR.to_f
      break
    else 
      puts "That is not a valid number! Try again:"
    end
  end

  puts "What is the duration of your loan in months?"
  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    if valid_number?(loan_duration)
      loan_duration = loan_duration.to_f
      break
    else 
      puts "That is not a valid number! Try again:"
    end
  end

  monthly_int = (loan_APR / 12) / 100

  monthly_pay = loan_amount * (monthly_int / (1 - (1 + monthly_int)**(-loan_duration)))

  puts "#{name}, your monthly payment for the next #{loan_duration} months will be $#{monthly_pay.round(2)}."

  keep_going = false

  puts "Would you like to calculate another loan? (Type 'yes' or 'no')"
  answer = gets.chomp.downcase
  keep_going = true if answer.start_with?('y')

  break if keep_going == false

end