# Write an if else statement that executes code

# if process_the_loop variable is true
# - executes loop that prints "The Loop was processed"

# if process_the_loop variable is false
# - just prints "The loop was not processed"

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop was not processed"
end
