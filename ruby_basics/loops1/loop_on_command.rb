# Modify so loop stops when user inputs 'yes'

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
# end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end