# write a method that assesses a string against word blocks
# can only use a letter once
# can only use one letter from each block
# returns true for a match or false for a non-match

WORD_BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], 
               ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
               ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], 
               ['Z', 'M']]

def block_word?(string)
  result_block = []

  WORD_BLOCKS.each do |block|
    string.split('').each do |letter|
      if block.include?(letter.upcase)
        result_block << block
      end
    end
  end
  result_block.size == result_block.uniq.size
end



p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true