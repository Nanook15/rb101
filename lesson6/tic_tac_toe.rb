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
def computer_places_piece(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
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

# presents remaining number to user with better formatting
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

# def score


# end

# main programme loop - initializes loop
loop do
  board = initialize_board

# inner programme loop - 
# board displayed & player & computer choose piece
# loop checks after each piece placed & breaks if winner or board full
  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece(board)
    break if someone_won?(board) || board_full?(board)
  end
  # inner game loop ends
  
  # board displayed, showing winner or full board
  display_board(board)

  # displays the outcome - winner or tie
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  # play again prompt
  prompt 'Play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# game loop ends and exit message
prompt 'Thanks for playing Tic Tac Toe. Goodbye!'
