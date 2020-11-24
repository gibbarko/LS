require 'pry'

FACE_CARDS = ['Jack', 'Queen', 'King', 'Ace']

def prompt(msg)
  puts "=> #{msg}"
end

def joiner(arr, seperator = ',', conjunction = "and")
  if arr.length == 1
    arr.join
  else
    arr_join = arr[0..(arr.length - 2)].join(seperator + ' ')
    arr_join + " " + conjunction + " #{arr[arr.length - 1]}"
  end
end

def initialize_deck
  new_deck = []
  9.times do |num|
    4.times { |_| new_deck << (num + 2) }
  end
  FACE_CARDS.each do |card|
    4.times { |_| new_deck << card }
  end
  new_deck
end

def intitial_deal(deck, p1, p2)
  2.times do |_|
    p1 << deck.shuffle!.pop
  end
  2.times do |_|
    p2 << deck.shuffle!.pop
  end
end

def total(hand)
  total = 0
  hand.each do |card|
    if card.class == Integer
      total += card
    elsif FACE_CARDS.include?(card)
      if card == 'Jack' || card == 'Queen' || card == 'King'
        total += 10
      elsif card == 'Ace'
        total + 11 <= 21 ? total += 11 : total += 1
      end
    end
  end
  total
end

def hit!(hand, deck)
  hand << deck.shuffle!.pop
end

def busted?(hand)
  total(hand) > 21
end

def player_turn(hand, comp_hand, deck)
  system 'clear'
  loop do 
    if busted?(hand)
      prompt "You were dealt a #{hand.last}. You busted!"
      break
    elsif total(hand) == 21
      prompt "You have 21, you should stay!"
      break
    else
      prompt "You're cards are #{joiner(hand)} for a total of #{total(hand)}."
      prompt "The dealer has a face up #{comp_hand[0]}."
      prompt "Would you like to hit or stay? (Type 'hit' or 'stay'):"
      answer = gets.chomp
      loop do
        if answer.downcase.start_with?('h')
          hit!(hand, deck)
          break
        elsif answer.downcase.start_with?('s')
          break
        else 
          prompt "I didn't get that, please typ 'hit' or 'stay'."
          answer = gets.chomp
        end
      end
      break if answer.downcase.start_with?('s')
    end
  end
end

def computer_turn(comp_hand, deck)
  loop do
    break unless total(comp_hand) < 17
    hit!(comp_hand, deck)
  end
end

def determine_winner(player_hand, comp_hand)
  if total(comp_hand) > 21
    prompt "Computer busted. Player wins!"
  elsif total(comp_hand) > total(player_hand)
    prompt "Computer has #{total(comp_hand)}, player has #{total(player_hand)}. Computer wins!"
  elsif total(comp_hand) < total(player_hand)
    prompt "Computer has #{total(comp_hand)}, player has #{total(player_hand)}. Player wins!"
  elsif total(comp_hand) == total(player_hand)
    prompt "Computer has #{total(comp_hand)}, player has #{total(player_hand)}. It's a tie!"
  end
end
# game loop

prompt "Welcom to 21!"

loop do
  deck = initialize_deck
  player_cards = []
  computer_cards = []
  intitial_deal(deck, player_cards, computer_cards)

  loop do
    player_turn(player_cards, computer_cards, deck)
    break if busted?(player_cards)
    computer_turn(computer_cards, deck)

    determine_winner(player_cards, computer_cards)
    break
  end

  prompt "Would you like to play again? (If yes, type 'y')"
  play_again = gets.chomp.downcase
  break unless play_again.start_with?('y')
end
