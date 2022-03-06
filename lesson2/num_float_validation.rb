def valid_number?(num)
  (num.to_f.to_s == num || num.to_i.to_s == num) == true
end

puts valid_number?('10')      #=> true
puts valid_number?('55.0')    #=> true
puts valid_number?('Hello')   #=> true
