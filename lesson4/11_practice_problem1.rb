# turn the following array
# turn this array into a hash where the names 
# are keys and the values are the positions in the array.


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

h = {}
flintstones.each_with_index { |element, index| h[element] = index }

p h