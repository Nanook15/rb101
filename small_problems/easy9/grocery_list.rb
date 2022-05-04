# write a method that returns an array of the correct number of items

def buy_fruit(array)
  shopping_list = []

  array.each do | fruit |
    fruit[1].times { shopping_list.push(fruit[0]) }
  end
  shopping_list
end

# Launch School Sol 1
# def buy_fruit(list)
#   expanded_list = []

#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit }
#   end

#   expanded_list
# end

# Launch School Sol 1
# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end




p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]