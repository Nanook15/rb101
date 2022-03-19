# Modify the block so that it prints the current
# number stops iterating when the current number ==2

# 5.times do |index|
#   # ...
# end

5.times do |index|
  puts index
  break if index == 2
end