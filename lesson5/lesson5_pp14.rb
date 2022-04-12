# Given this data structure write some code to return an array 
# containing the colours of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colours should be capitalised.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result =  hsh.map do | _, hash |
            if hash[:type] == 'fruit'
              hash[:colors].each do |color|
                color.capitalize!
              end
            elsif hash[:type] == 'vegetable'
               hash[:size].upcase!
            end
          end
    
p result