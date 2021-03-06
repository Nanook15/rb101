# remove vowels from array string and return an array string

def remove_vowels(array_string)
  array_string.map do |element|
    element.delete "AaEeIiOoUu"
  end 
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']