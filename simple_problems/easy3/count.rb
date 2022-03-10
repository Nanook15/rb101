c = "hello world\\r\\n"
#c.count "\\"                   #=> 2
#c.count "\\A"                  #=> 0
puts c.count "X-w"                #=> 3