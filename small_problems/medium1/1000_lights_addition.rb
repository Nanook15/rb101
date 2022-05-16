


def which_switches_are_on(light_board)
  on = []
  off = []

  light_board.select do |light_number, light_on_or_off|
    if light_on_or_off.zero?
      off << light_number
    else
      on << light_number
    end
  end

  puts "lights#{on.join(' ')} are on. lights #{off.join} are off"

end




light_board = {1=>1, 2=>1, 3=>1, 4=>1, 5=>1, 6=>1, 7=>1, 8=>1, 9=>1, 10=>1}

which_switches_are_on(light_board)