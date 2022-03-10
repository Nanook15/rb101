# return an array of every even index

#def oddities(array)
#  array = array.select.with_index do |value, index| 
#    index.even?
#  end
#end

#def oddities(array)
#  output = []
#  index = 1
#  while index < array.size
#    output << array[index]
#    index +=2
#  end
#  output
#end

#def oddities(array)
#  array.select { |element| array.index(element).odd?}
#end

def oddities(array)
  odd_list = []

  array.each_with_index do |item, index|
    odd_list << item unless index.odd?
  end

  odd_list
end


p oddities([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) #== [2, 4, 6]
#p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
#p oddities(['abc', 'def']) #== ['abc']
#p oddities([123]) #== [123]
#p oddities([]) #== []