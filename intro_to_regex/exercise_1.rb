# write a method that returns true if you match a string that looks like URL


def url?(string)
  string.match?(/^https?:\/\/\S*$/)
end



p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false