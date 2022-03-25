# write a method that takes 2 arguments
# a string
# an integer
# and prints the string as many times as the integer indicates


def repeat (string, int)
  int.times do
    puts string
  end
end


repeat('Hello', 3)