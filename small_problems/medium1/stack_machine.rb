# write a method that implements a miniature stacK & register
# based programming language

# Error handling
# return nil if runs successfully
# detect empty stack
# report invalid tokens

require "pry"

COMMANDS = %w(PUSH PRINT MULT ADD SUB DIV MOD POP)
$stack = []
$register = 0

def PUSH
  $stack << $register
end

def PRINT
  puts "#{$register}"
end

def MULT
  check_stack
  $register *= $stack.pop
end

def ADD
  check_stack
  $register += $stack.pop
end

def SUB
  check_stack
  $register -= $stack.pop
end

def DIV
  check_stack
  $register /= $stack.pop
end

def MOD
  check_stack
  $register %= $stack.pop
end

def POP
  check_stack
  $register = $stack.pop
end

def valid_integer?(operation)
  operation.to_i.to_s == operation
end

def check_stack
  if $stack.empty?
    warn "STACK EMPTY.FAILURE IMMINENT"
    exit
  end
end

def error_check(operation)
  if COMMANDS.include?(operation)
    send(operation)
  else
    warn "INVALID COMMAND IN PROGRAM"
    exit 
  end
  
end

def minilang(program)
  program.split.each do |operation|
    if valid_integer?(operation)
      $register = operation.to_i
    else
      error_check(operation)
    end
  end
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# 8

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)