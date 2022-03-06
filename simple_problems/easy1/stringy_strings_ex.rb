def stringy(n, switch=1)

  if switch == 0
    output = [0, 1].cycle.first(n)
  else   
    output = [1, 0].cycle.first(n)
  end

  output.join

end

puts stringy(6, 1) == '101010'
puts stringy(9, 0) == '010101010'
puts stringy(4, 1) == '1010'
puts stringy(7, 0) == '0101010'