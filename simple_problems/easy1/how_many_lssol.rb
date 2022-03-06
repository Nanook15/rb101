vehicles = ["car", "car", "truck", "car", "suv", "truck", "motorcycle", "motorcycle", "car", "truck", "suv"]


def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end



 