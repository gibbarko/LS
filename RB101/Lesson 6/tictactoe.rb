require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diags

def prompt(msg)
  puts "=> #{msg}"
end

def joiner(arr, seperator = ', ', conjunction = "or")
  if arr.length == 1
    arr.join
  else
    arr_join = arr[0..(arr.length - 2)].join(seperator + ' ')
    arr_join + " " + conjunction + " #{arr[arr.length - 1]}"
  end
end

def display_board(brd)
  system 'clear'
  puts ""
  puts "  1  |  2  |  3"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts '-----+-----+-----'
  puts "  4  |  5  |  6"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts '-----+-----+-----'
  puts "  7  |  8  |  9"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ''
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  prompt "Choose a square: #{joiner(empty_squares(brd))} "
  loop do
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice.
            Please pick sqaure #{joiner(empty_squares(brd))}: "
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if two_computer?(brd)
    computer_attack!(brd)
  elsif two?(brd)
    computer_defend!(brd)
  elsif brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def computer_defend!(brd)
  line = detect_two(brd)
  line.each do |num|
    if brd[num] == ' '
      brd[num] = 'O'
    end
  end
end

def computer_attack!(brd)
  line = detect_two_computer(brd)
  line.each do |num|
    if brd[num] == ' '
      brd[num] = 'O'
    end
  end
end

def winner?(brd)
  !!detect_winner(brd)
end

def two?(brd)
  !!detect_two(brd)
end

def two_computer?(brd)
  !!detect_two_computer(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def detect_two_computer(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(PLAYER_MARKER) != 1
      return line
    end
  end
  nil
end

def detect_two(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) != 1
      return line
    end
  end
  nil
end

def tie?(brd)
  empty_squares(brd).empty?
end

loop do
  prompt "First one to 5 wins, wins!"

  player_score = 0
  computer_score = 0

  loop do
    
    board = initialize_board
    display_board(board)

    prompt "the score is Player: #{player_score}, Computer: #{computer_score}."

    loop do
      loop do
        player_places_piece!(board)
        break if winner?(board) || tie?(board)

        computer_places_piece!(board)
        break if winner?(board) || tie?(board)

        display_board(board)
      end

      display_board(board)

      if winner?(board)
        prompt "#{detect_winner(board)} won!"
        break
      elsif tie?(board)
        prompt "It's a tie!"
        break
      end
    end
 
    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end

    break if player_score == 5 || computer_score == 5

    if winner?(board)
      prompt "#{detect_winner(board)} won!"
    elsif tie?(board)
      prompt "It's a tie!"
    end
  end

  prompt "Would you like to play again? (If yes, typ 'y')"
  play_again = gets.chomp.downcase
  break unless play_again.start_with?('y')
end
