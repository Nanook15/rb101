# Make the following loop iterate 5 times

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   break
# end

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

