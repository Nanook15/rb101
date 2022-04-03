[2, 5, 3, 4, 1].sort do |a, b|
  p a.ord
  p b.ord
  puts "a is #{a.ord} and b is #{b.ord}"
  a <=> b
end