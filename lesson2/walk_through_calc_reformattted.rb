require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  #(num.to_f.to_s == num || num.to_i.to_s == num) == true
  /\d/.match(num) && /^-?\d*\.?\d*$/.match(num)
  #/^-?\d+$/.match(num)
  #Integer(num) rescue false
  #integer?(num) || float?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  num1 = ''
  num2 = ''
  operator = ''
  
  loop do
    prompt(MESSAGES['first_num'])
    num1 = Kernel.gets().chomp()
    
    if valid_number?(num1)
      break
    else
      prompt(MESSAGES['not_valid'])
    end
  end
  
  loop do
    prompt(MESSAGES['second_num'])
    num2 = Kernel.gets().chomp()
    
    if valid_number?(num2)
      break
    else
      prompt(MESSAGES['not_valid'])
    end
  end
   
 operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) division
  MSG
  
  prompt(operator_prompt)
  
  loop do
    operator = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_choice'])
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  answer = case operator
  when '1'
    num1.to_f() + num2.to_f()
  when '2'
    num1.to_f() - num2.to_f()
  when '3'
    num1.to_f() * num2.to_f()
  when '4'
    num1.to_f() / num2.to_f()
  end
  
  prompt("The answer is #{answer}")
  
  prompt(MESSAGES['again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
