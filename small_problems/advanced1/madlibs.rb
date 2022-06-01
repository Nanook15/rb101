

file_data = File.read("madlibs.txt")

ADJECTIVE = %w(quick lazy sleepy ugly)
NOUN = %w(fox dog head leg)
VERB = %w(jumps lifts bites licks)
ADVERB = %w(easily lazily noisily excitedly)

def madlibs_prog(file_data)
  file_data.split.map do |word|
    case  
    when /\%\{adjective\}/.match(word) 
      file_data.sub!(/\%\{adjective\}/, ADJECTIVE.sample)
    when /\%\{noun\}/.match(word) 
      file_data.sub!(/\%\{noun\}/, NOUN.sample)
    when /\%\{verb\}/.match(word) 
      file_data.sub!(/\%\{verb\}/, VERB.sample)
    when /\%\{adverb\}/.match(word) 
      file_data.sub!(/\%\{adverb\}/, ADVERB.sample)
    end
  end
  puts file_data
end



madlibs_prog(file_data)