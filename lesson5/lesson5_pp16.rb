# produce a random hexadecimal sequence that is representative of UUID
# Each UUID consists of 32 hexadecimal characters, and is typically broken 
# into 5 sections, like this 8-4-4-4-12
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

hex_hash = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
             5 => '5', 6 => '6', 7 => '7', 8 => '8',
             9 => '9', 10 => 'a', 11 => 'b', 12 => 'c', 13  => 'd', 14 => 'e', 15 => 'f'
            }

def uuid_call
  sequence = []
  uuid = []
  
  32.times { | n | sequence << rand(0..15) }

  sequence.select do | element |
    uuid << hex_hash[element]
  end

  "UUID = #{uuid[0..7].join}-#{uuid[8..11].join}-#{uuid[12..15].join}-#{uuid[16..19].join}-#{uuid[20..31].join}"
end

p uuid_call
