# Write a method that takes an Array of Integers between 
# 0 and 19 and returns an Array of those integers sorted 
# based on the English words for each number:
# zero, one, two, three, four, five, six, seven, eight, 
# nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
# sixteen, seventeen, eighteen, nineteen

NUMBER_WORDS = %w(zero one two three four five six seven eight 
  nine ten eleven twelve thirteen fourteen fifteen 
  sixteen seventeen eighteen nineteen
  )

# def alphabetic_number_sort(range)
#   hash = {}
#   result = []
#   counter = 0

#   range.each do | num |
#     hash[NUMBER_WORDS[counter]] = num
#     counter += 1
#   end

#   hash.sort.each do | _, v |
#     result << v
#   end

#   result

# end

# Launch School Solution
def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }



end


p alphabetic_number_sort((0..19).to_a) #== [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#    6, 16, 10, 13, 3, 12, 2, 0
#  ]