def calculator(a , b, c)

  if c == "+"
   answer = [a, b].inject(:+)
  elsif c == "-"
    answer = [a, b].inject(:-)
  elsif c == "*"
    answer = [a, b].inject(:*)
  elsif c == "/"
    answer = [a.to_f(), b.to_f()].inject(:/)
  end
end

Kernel.puts("Input first number :")
  first_num = Kernel.gets().chomp().to_i

Kernel.puts("Input second number :")
  second_num = Kernel.gets().chomp().to_i

Kernel.puts("Input operator :")
  operator = Kernel.gets().chomp()

puts calculator(first_num, second_num, operator)
