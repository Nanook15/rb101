# write a method that takes one argument, the total number of switches
# and returns an Array that identifies which lights are on after n repetitions

# 1. Pass number n method, say 10
# 2. Create a hash with keys 1..n and value of 0 { 1 => 0, 2=>0, 3=>0, 4=>0, 5=> 0}
# 3. Iterate over hash starting at with key = 1 + 1 upto n and reset loop
# 		if value at key == 0 change 1
# 		else if value at key == 1 change to 0 
# 4. Iterate over hash starting at 2 + 2 + 2 up to n and then reset loop
#                    if value at key == 0 change 1
# 		else if value at key == 1 change to 0 
# 5. Iterate over hash starting at 3 + 3 up to n and then reset loop
# 6. keep repeating until loops = n
# 7. return an array of the keys where the value == 1

def create_board(range)
  range.map { |num| [num, 0]}.to_h
end

def switchboard(range, light_board)
  1.upto(range.size) do | iteration |
    count = iteration
    range.each_with_index do | element, index |
      if count == index + 1 && light_board.fetch(element) == 0
        light_board[element] = 1
        count += iteration
      elsif count == index + 1 && light_board.fetch(element) == 1
        light_board[element] = 0
        count += iteration
      end    
    end
  end 
end

def switches(n)
  range = Array (1..n)
  light_board = create_board(range)

  switchboard(range, light_board)

  light_board.reject { | _, value| value == 0}.keys
end



p switches(1000)