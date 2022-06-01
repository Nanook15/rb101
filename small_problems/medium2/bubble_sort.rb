# Write a method that takes a array and sorts it
# using the bubble sort technique

require 'pry'

def bubble_sort!(array)
  final_array = []
  optimize = 1

  loop do
    break if final_array == array
    final_array = array.dup
    
    1.upto(array.size - optimize) do |index|
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
      end
    end
    optimize += 1
  end
  array
end


# Launch School Solution

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       binding.pry
#       swapped = true
#     end
#     binding.pry
#     break unless swapped
#   end
#   nil
# end


# array = [5, 3]
# p bubble_sort!(array)
# array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)