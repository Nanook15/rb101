def tricky_method(a_string_param, an_array_param)
  my_string += "rutabaga"
  an_array_param += "rutabaga"

  return a_string_param, an_array_param
end



my_string = "pumpkins"a
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"  #=> 'pumpkinsrutabaga'
puts "My array looks like this now: #{my_array}"    #=> ['pumpkins', 'rutabaga']

