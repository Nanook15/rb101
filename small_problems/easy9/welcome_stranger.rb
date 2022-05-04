# take an array with elements of a name, and a hash with title & occupation
# return a sentence using the various elements

def greetings(name, qualifications)
  name = "#{name.join(' ')}"
  title =  "#{qualifications.values.join(' ')}"
  "Hello, #{name}! Nice to have a #{title} around"
end






p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.