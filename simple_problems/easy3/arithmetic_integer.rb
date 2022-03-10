#prompt user for 2 integers
#conducts multiple operations
#input not validated

def prompt(string)
  puts "==> #{string}"
end

prompt("Enter the first number : ")
  first_num = gets.chomp.to_f

prompt("Enter the second number : ")
  second_num = gets.chomp.to_f

prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
prompt("#{first_num} / #{second_num} = #{first_num / second_num}")
prompt("#{first_num} % #{second_num} = #{first_num % second_num}")
prompt("#{first_num} ** #{second_num} = #{first_num ** second_num}")
