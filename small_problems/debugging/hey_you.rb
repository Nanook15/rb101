# Amend the following method so it prints HEY YOU, rather than HEY you


def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

p shout_out_to('you') # expected: 'HEY YOU'


def shout_out_to(name)
  name.upcase!
  
  puts 'HEY ' + name
end
  
p shout_out_to('you') # expected: 'HEY YOU'