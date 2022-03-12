# replace specified word in a string


advice = "Few things in life are as important as house training your pet dinosaur."

#def replace(string)
#  words = string.split(' ')

#  arr_index = words.index('important')
#  words.delete('important')
#  words.insert(arr_index, 'urgent')
#  words.join(' ')


#end

#puts replace(advice)

p advice.gsub!('important', 'urgent')
