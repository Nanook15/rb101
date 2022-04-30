# create a simple mad-libs program that requests
# a noun, verb, adjective and adverb and injects those 
# into a story you create

def prompt(string)
  puts "=>#{string}"
end

def madlib(noun, verb, adjective, adverb)
  sentence_1 = "The #{adjective} #{noun} #{verb}s #{adverb}.\nThat's hilarious, you are the soul of wit"
  sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb}.\nOver the lazy dog"
  sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

  puts [sentence_1, sentence_2, sentence_3].sample

end


prompt "Enter a noun: "
  noun = gets.chomp

prompt "Enter a verb: "
  verb = gets.chomp

prompt "Enter an adjective: "
  adjective = gets.chomp

prompt "Enter an adverb: "
  adverb = gets.chomp 

madlib(noun, verb, adjective, adverb)
