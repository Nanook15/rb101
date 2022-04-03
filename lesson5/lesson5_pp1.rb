# sort this array of strings in descending numeric order

# step 1 convert to integer
# step 2 sort
# return a sorted version of original array as a string

arr = ['10', '11', '9', '7', '8']

arr = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p arr