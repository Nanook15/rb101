require 'pry'

# set winning lines
WINNING_LINES =   [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # cols
                  [[1, 5, 9], [3, 5, 7]] # diagonals

# set markers                  
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

# prompt for user
def prompt(msg)
  puts "=> #{msg}"
end

# display board method
# clears board before updating via brd variable content
# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts " You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

# initializes a new board with 'initial marker'
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# returns the current empty board spaces by
# checking which board squares still have initial marker
def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# ask player to choose a square from empty squares
# loops after error message if player chooses an unavailable square
# loop breaks after player chooses an available square
def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, but that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

# computer chooses piece from remaining empty squares
# assigns computer marker using defence algo or random
def computer_places_piece!(brd)
  square = ''
  
  case
  when offense_ai(brd) != nil
    brd[offense_ai(brd)] = COMPUTER_MARKER
  when defense_ai(brd) != nil
    brd[defense_ai(brd)] = COMPUTER_MARKER
  when brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

# checks if board full
def board_full?(brd)
  empty_squares(brd).empty?
end

# checks board for winner
def someone_won?(brd)
  !!detect_winner(brd)
end

# checks board against winning_lines to see if winning
# criteria has been hit
def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# presents available board moves to user with better formatting
def joinor(remaining_num, arg1=', ', arg2='or')
    case 
    when remaining_num.size == 1
      "#{remaining_num[0]}"
    when remaining_num.size == 2
      "#{remaining_num[0]} #{arg2} #{remaining_num[1]}"
    when remaining_num.size > 2
      "#{remaining_num[0..-2].join(arg1)} #{arg2} #{remaining_num[-1]}"
    end
end

# updates score board
def update_score(board, win_count)
  if detect_winner(board) == 'Player'
    win_count[:player] = win_count[:player] + 1
  elsif detect_winner(board) == 'Computer'
    win_count[:computer] = win_count[:computer] + 1
  end
end

# delivers message at end of game before replay option
def win_message(win_count)
  case
  when win_count[:player] == 5
    prompt "*****FINAL SCORE*****".center(30)
    prompt "**Player:#{win_count[:player]}**Computer:#{win_count[:computer]}**".center(30)
    prompt "*****Player is Winner!*****".center(30)
  when win_count[:computer] == 5
    prompt "*****FINAL SCORE*****".center(30)
    prompt "**Player:#{win_count[:player]}**Computer:#{win_count[:computer]}**".center(30)
    prompt "*****Computer is Winner!*****".center(30)
  end
end

# ai offense board: checks winning lines for 2 computer markers
# and one empty marker. returns empty board space or empty array
def offense_ai(brd)
  square = []

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
      brd.values_at(*line).count(INITIAL_MARKER) == 1
      square = line.select {|key| brd[key] == ' '}
    end
  end
  square[0]
end

# ai defense board: checks winnings lines for 2 player markers and
# one empty marker. returns empty board space or empty array
def defense_ai(brd)
  square = []

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
      brd.values_at(*line).count(INITIAL_MARKER) == 1
      square = line.select {|key| brd[key] == ' '}
    end
  end
  square[0]
end

#triggers computer or player piece placement based on current_player
def place_piece!(brd, current_player)
  if current_player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

# switches current active player
def alternate_player(current_player)
  if current_player == 'Computer'
    current_player = 'Player'
  elsif current_player == 'Player' 
    current_player = 'Computer'
  end
end

def set_player(first_move)
  prompt "Choose who goes first : (P)layer or (C)omputer : "
    choice = gets.chomp.downcase
  
  if choice == 'p'
    first_move = 'Player'
  else
    first_move = 'Computer'
  end
end

#outer loop initliases/resets win_count/choose which player goes first
loop do
  win_count = { :player => 0, :computer => 0 }
  
  # game loop - initializes loop/resets board for each round of the game
  loop do
    board = initialize_board
    current_player = ' '
    current_player = set_player(current_player)

    # inner programme loop - 
    # board displayed & player & computer choose piece
    # loop checks after each piece placed & breaks if winner or board full
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    # inner game loop ends
    
    # board displayed, showing winner or full board
    display_board(board)

    # displays the outcome - winner or tie
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      sleep 3
      update_score(board, win_count)
    else
      prompt "It's a tie!"
    end

    break if win_count[:player] == 5 ||
             win_count[:computer] == 5
  end

  win_message(win_count)

  # play again prompt
  prompt 'Play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# game loop ends and exit message
prompt 'Thanks for playing Tic Tac Toe. Goodbye!'

