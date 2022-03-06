VALID_CHOICES = %w(rock paper scissors lizard spock)

OUTCOMES = { :rock => { :lizard => 'win', :scissors => 'win', :paper => 'lose', :spock => 'lose', :rock => 'draw'},
             :scissors => { :lizard => 'win', :scissors => 'draw', :paper => 'win', :spock => 'lose', :rock => 'lose'},
             :paper => { :lizard => 'lose', :scissors => 'lose', :paper => 'draw', :spock => 'win', :rock => 'win'},
             :spock => { :lizard => 'lose', :scissors => 'win', :paper => 'lose', :spock => 'draw', :rock => 'win'},
             :lizard => { :lizard => 'draw', :scissors => 'lose', :paper => 'win', :spock => 'win', :rock => 'lose'}
            } 

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(player_choice, computer_choice, hash)
  key = player_choice.to_sym
  value = computer_choice.to_sym
  hash[key][value]
end    

def display_result(player, computer)
  if win?(player, computer, OUTCOMES) == 'win'
    prompt("You won!")
  elsif win?(player, computer, OUTCOMES) == 'lose'
    prompt("Computer won!")
  else
    prompt("Its a tie!")
  end
end

def convert_input(input)
  case
  when input == 'r'
    'rock'
  when input == 'l'
    'lizard'
  when input == 'p'
    'paper'
  when input == 'sc'
    'scissors'
  when input == 'sp'
    'spock'
  end
end

def win_counter(player, computer)
  if win?(player, computer, OUTCOMES) == 'win'
    'player'
  elsif win?(player, computer, OUTCOMES) == 'lose'
    'computer'
  end
end



loop do
  choice = ''
  player_win_count = 0
  computer_win_count = 0

  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp().downcase

      loop do
        if choice.start_with?('s')
          prompt("Choose (Sp)ock or (Sc)issors")
          choice = Kernel.gets().chomp().downcase
        end
        break
      end

      choice = convert_input(choice)

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    display_result(choice, computer_choice)

    who_won = win_counter(choice, computer_choice)

    if who_won == 'player'
      player_win_count += 1
    elsif who_won == 'computer'
      computer_win_count += 1
    end

    prompt("You chose: #{choice}; Computer chose:#{computer_choice}")

    prompt("Player score= #{player_win_count}: Computer score = #{computer_win_count}")

    break if (player_win_count == 3) || (computer_win_count == 3)
  end

  if player_win_count == 3
    prompt("Player Wins!")
  else
    prompt("Computer Wins!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
