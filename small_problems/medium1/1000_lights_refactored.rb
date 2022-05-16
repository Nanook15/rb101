# Lightboard toggle program

require "pry"

# Creates a hash representation of a light board with n lights

def create_light_board(iterations)
  iterations.map { |num| [num, 0] }.to_h
end

# Operates switches on light board

def switchboard(iterations, light_board)
  1.upto(iterations.size) do |iteration|
    count = iteration
    iterations.each_with_index do |element, index|
      if count == index + 1 && light_board.fetch(element).zero?
        light_board[element] = 1
        count += iteration
      elsif count == index + 1 && light_board.fetch(element) == 1
        light_board[element] = 0
        count += iteration
      end
    end
    which_switches_are_on(light_board, iteration)
  end
  light_board
end



# Returns which lights are toggled on at end

def toggled_on?(light_board)
  light_board.reject { |_, value| value.zero? }.keys
end

# Main program method

def light_toggle(number_of_lights)
  iterations = Array(1..number_of_lights)
  light_board = create_light_board(iterations)
  switchboard(iterations, light_board)
  toggled_on?(light_board)
end


def which_switches_are_on(light_board, iteration)
  on = []
  off = []

  light_board.select do |light_number, light_on_or_off|
    if light_on_or_off.zero?
      off << light_number
    else
      on << light_number
    end
  end
  puts "Round #{iteration}:\nLights #{on.join(' ')} are on.\nLights #{off.join(' ')} are off"
end


p light_toggle(75)
