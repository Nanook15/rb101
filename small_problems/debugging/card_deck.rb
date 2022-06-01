# find the bug

require 'pry'

cards = [[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
         [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
         [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
         [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]]

deck = { :hearts   => cards[0],
         :diamonds => cards[1],
         :clubs    => cards[2],
         :spades   => cards[3] }

def score(card)
  case card                            
  when :ace   then 11            # when card ace then 11
  when :king  then 10            # when card king then 10
  when :queen then 10            # when card queen then 10
  when :jack  then 10            # when card jack then 10
  else card                      # otherwise the value of card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|               #  pass keys into variable suit
  cards = deck[suit]                   # ???
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end
  sum += scores.sum
end

puts sum

total_sum  = 4 * [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].sum
p total_sum
player_sum = player_cards.map { |card| score(card) }.sum
p player_sum
puts(sum == total_sum - player_sum) #=> false