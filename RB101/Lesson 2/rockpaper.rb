VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

=begin
def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'lizard' && second == 'paper') 
end
=end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'spock' && (second == 'rock' || second == 'scissors')) ||
  (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_results(choice, u, computor_choice, c)
  if win?(choice, computor_choice)
    prompt("You won!")
    u += 1
  elsif win?(computor_choice, choice)
    prompt("Computer won!")
    c += 1
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  puts "First one to 5 wins, wins!"

  player_score = 0
  comp_score = 0
  puts "Score is: player = #{player_score} vs. comp = #{comp_score}!"

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}:")
    choice = ''
    loop do
      choice = gets.chomp
      break if VALID_CHOICES.include?(choice)
      prompt("Please enter a valid choice: #{VALID_CHOICES.join(', ')}.")
    end

    computor_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}; computer chose #{computor_choice}.")

    display_results(choice, player_score, computor_choice, comp_score)

    prompt("Play again? (type 'y' or 'n')")
    keep_going = gets.chomp
    break unless keep_going.downcase.start_with?('y')
  end
end

prompt("Thank you for playing! Bye!")
