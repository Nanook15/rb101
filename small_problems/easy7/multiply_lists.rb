# write a method that takes 2 array arguments
# and returns the product of the numbers sharing the same index

def multiply_list(arr1, arr2)
  result = []
  counter = 0

  loop do 
    break if result.size == arr1.size
    result << arr1[counter] * arr2[counter]
    counter += 1
  end

  result 
end

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

def multiply_list(arr1, arr2)
  result = [] 

  arr1.zip(arr2) { |sub_array | result << sub_array[0] * sub_array[1] }

  result
end


p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]