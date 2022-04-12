# Given the following data structure without modifying the original array, use the #map method to return a new array identical 
# in structure to the original but where the value of each integer is incremented by 1.

def modify(array)
  array.freeze
  working_array = array.clone 
  

  working_array.map do | hsh |
    result = { }
    hsh.each do |k, v|
     result[k] = v += 1
    end
    result
  end
end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
p modify(arr)

p arr