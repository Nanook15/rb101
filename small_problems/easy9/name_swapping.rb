# write a method that takes a forename and surname, separated by a space
# and returns a surname, comma, space and forename.


def swap_name(string)
  name = string.split(' ')
  "#{name[1]}, #{name[0]}"
end

# Launch School Solution
# def swap_name(name)
#   name.split(' ').reverse.join(', ')
# end


p swap_name('Joe Roberts') #== 'Roberts, Joe'