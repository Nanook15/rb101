#write a method that takes an array of numbers
# and returns an array with the same number of elements
# and each element has the running total from the original array
# use the Enumerable#each_with_object  and Enumerable#inject

#def running_total(array)
#  sum = 0
#  array.each_with_object([]) do | element, arr | 
#    arr.push(sum += element) 
#  end
#end

def running_total(array)
  arr = []                           # initialise array to hold results
  array.inject(0) do |memo, value|   # (0) starting value in memo, passes elements into value
    memo += value                    # add element in value to memory
    arr << memo                      # push result value into memo to array
    memo                             # memo here to be pass to next iteration
  end
  arr                                # array value returned by method
end


p running_total([2, 5, 13]) # == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []