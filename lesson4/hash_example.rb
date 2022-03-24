# number_of_pets = {
#   'dogs' => 2,
#   'cats' => 4,
#   'fish' => 1
# }
# pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
# counter = 0

# loop do
#   break if counter == number_of_pets.size
#   current_pet = pets[counter]
#   current_pet_number = number_of_pets[current_pet]
#   puts "I have #{current_pet_number} #{current_pet}!"
#   counter += 1
# end



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# def select_fruit(produce)
#   produce.select { |k, v| v == 'Fruit'}
# end

def select_fruit(produce)
  produce_keys = produce.keys
  fruit = Hash[]
  counter = 0

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce[current_key]

    if current_value == 'Fruit'
      fruit[current_key] = current_value
    end

    counter +=1
  end

  fruit

end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}