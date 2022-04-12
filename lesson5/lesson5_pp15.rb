# Given the following data structure write some code to return 
# an array which contains only the hashes where the integers are even?

arr = [
       {a: [1, 2, 3]}, 
       {b: [2, 4, 6], c: [3, 6], d: [4]}, 
       {e: [8], f: [6, 10]}
      ]

# result =  arr.map do | hash |
#             hash.select do |_, value|
#                value.all? { | ele | ele.even? }
#             end
#           end

result = arr.select do |hsh|
          hsh.all? do |_, value|
            value.all? do |num|
              num.even?
            end
          end
        end
# => [{:e=>[8], :f=>[6, 10]}]





p result