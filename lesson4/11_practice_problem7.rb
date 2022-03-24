statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do | letter |
  letter_frequency = statement.count(letter)
  p letter_frequency
  result[letter] = letter_frequency if letter_frequency > 0
end

p result