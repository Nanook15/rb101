[[1, 2], [3, 4]].each do |arr|      # call method #each on array, each nested array is then assigned to variable arr and passed into the block
  puts arr.first                    # the #first method calls the element an index 0 of each nested arrays which are the printed to a new line
end                                 # #puts returns nil and because it is the last expression in the block, the blocks return value is nil
# 1                                 # however the #each method returns the original array.
# 3                                 # no transformation or selection takes place, the block does not consider the return value
# => [[1, 2], [3, 4]]

