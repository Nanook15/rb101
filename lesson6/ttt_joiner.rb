# arr = [1,2,3,4,5,6,7,8,9]

# puts "Choose a square (#{arr.join(',')}):"


def joinor(array, arg1=', ', arg2='or')
  if array.count < 3
    array.join(" #{arg2} ")
  else
    array.join(arg1).insert(-2, "#{arg2} ")
  end
end

# Launch School Solution

# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end


joinor([1])
joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"