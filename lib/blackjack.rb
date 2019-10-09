require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  if input == "h"
    return card_total += deal_card
  elsif input == "s"
    return card_total
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
<<<<<<< HEAD
  
  loop do
    card_total = hit?(card_total)
    display_card_total(card_total)
=======
  binding.pry
  
  loop do
    card_total
    hit?(card_total)
>>>>>>> b7e1f14af68a1df530d0cab192121c51a716a07c
    if card_total > 21
      break
    end
  end
  end_game(card_total)
<<<<<<< HEAD
end  
=======
end
    
>>>>>>> b7e1f14af68a1df530d0cab192121c51a716a07c
