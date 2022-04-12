# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections, like this 8-4-4-4-12
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# Write a method that returns one UUID when called with no parameters.

def uuid_call
  uuid = []
  hex =  %w(a b c d e f 0 1 2 3 4 5 6 9)
  32.times  { | n | uuid << hex.sample }
  puts "#{uuid[0..7].join}-#{uuid[8..11].join}-#{uuid[12..15].join}-#{uuid[16..19].join}-#{uuid[20..31].join}"
end

uuid_call


