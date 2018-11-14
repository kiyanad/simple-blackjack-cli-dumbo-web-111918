def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)

end

def display_card_total(total)
puts "Your cards add up to #{total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"


  # code #end_game here
end

def initial_round
deal1 = deal_card
deal2 = deal_card
total = deal1 + deal2
display_card_total(total)
return total
end


def hit?(number)
prompt_user
input = get_user_input
  if input == 'h'
    number += deal_card
  elsif input == 's'
    return number
  
end

end

def invalid_command




end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
cards = initial_round
until cards > 21 do
  cards = hit?(cards)
  display_card_total(cards)
  # code runner here
end
end_game(cards)

end
