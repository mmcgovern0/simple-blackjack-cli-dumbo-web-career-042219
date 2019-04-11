def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  deal = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total.to_i
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  end
  if input == "s"
    card_total
  end
  until input = "h" || input = "s"
    invalid_command
    prompt_user
    input = get_user_input
  end
  card_total.to_i
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
  while card_total < 20
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  if card_total == 21
    puts "BLACKJACK!"
  end
  end_game(card_total)
end
    
