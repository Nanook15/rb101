require 'pry'

PACK = {
        :hearts => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
        :diamonds => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
        :clubs => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
        :spades => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
       }

SUITS = [:hearts, :diamonds, :clubs, :spades]

HAND = { 
         :player => [], 
         :dealer => [] 
        }

def prompt(message)
  puts "=> #{message}"
end

def player_deal
  HAND[:player] << PACK[SUITS.sample].shuffle!.pop
end

def dealer_deal
  HAND[:dealer] << PACK[SUITS.sample].shuffle!.pop
end

def opening_hand
  counter = 0
  
  until counter == 2
  player_deal
  dealer_deal
  counter += 1
  end
end

def show_player_hand
  prompt "Player Cards = #{HAND[:player].join(', ')}"
  prompt "Player Cards Value = #{score(HAND[:player])}"
  prompt "Dealer Card = #{HAND[:dealer][0]} ??"
end

def score(hand)
  hand_total = []

  hand.each do |card|
  hand_total << case card
                when :ace   then assess_ace(hand)
                when :king  then 10
                when :queen then 10
                when :jack  then 10
                else card
                end
  end
  hand_total.sum
end

def assess_ace(hand)
  remove_ace = hand.dup
  remove_ace.delete(:ace)

  if score(remove_ace) <= 10
    11
  elsif score(remove_ace) > 10
    1
  end
end

def player_bust
  prompt "Player Bust. Dealer Wins!"
  prompt "Player Final Score: #{score(HAND[:player])}"
  prompt "Dealer Final Score: #{score(HAND[:dealer])}"
end

def dealer_bust
  prompt "Dealer Bust. Player Wins!"
  prompt "Player Final Score: #{score(HAND[:player])}"
  prompt "Dealer Final Score: #{score(HAND[:dealer])}"
end

def show_dealer_hand
  prompt "Player Cards = #{HAND[:player].join(', ')}"
  prompt "Player Cards Value = #{score(HAND[:player])}"
  prompt "Dealer Cards = #{HAND[:dealer].join(', ')}"
  prompt "Player Cards Value = #{score(HAND[:player])}"
end

def win_message
  show_dealer_hand

  if score(HAND[:player]) > score(HAND[:dealer])
    prompt "Player Cards Value = #{score(HAND[:player])}"
    prompt "Dealer Cards Value = #{score(HAND[:dealer])}"
    prompt "*****Player Wins!!!!*****"
  else
    prompt "Player Cards Value = #{score(HAND[:player])}"
    prompt "Dealer Cards Value = #{score(HAND[:dealer])}"
    prompt "*****Dealer Wins!!!!*****"
  end
end

loop do 
  opening_hand
  
  loop do
    show_player_hand
    prompt "Choose Stick or Twist : "
    choice = gets.chomp.downcase
    
    if choice == 'twist'
      player_deal
    end
    binding.pry
    break if choice == 'stick' || score(HAND[:player]) > 21
  end 

  if score(HAND[:player]) > 21
    player_bust
    break
  end

  loop do 
    break if score(HAND[:dealer]) >= 17 || score(HAND[:dealer]) > 21
    show_dealer_hand
    
    sleep 1
    prompt "."
    sleep 1 
    prompt ".."
    sleep 1
    prompt "..."
    binding.pry
    dealer_deal
  end

  if score(HAND[:dealer]) > 21
    dealer_bust
  else
    win_message
  end

break
end



