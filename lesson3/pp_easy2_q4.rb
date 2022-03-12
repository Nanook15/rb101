# check a string to see if it contains a set of characters

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino") #=> 

p advice.include?("dino") #=>

p advice.match?(/dino/) #=>

p advice.match?("Dino")

# Note that this is not a perfect solution, as it would match any substring with Dino in it.