# write a method that returns true if there are matching sets of 
# either (),{},[],'' or ""
require "pry"

PAIRS = { 
          '(' => ')', '{' => '}', '[' => ']'
        }


def paired_quotes?(string)
  single_quotes = []
  double_quotes = []

  string.each_char do |quotes|
    if quotes == "'"
      single_quotes << quotes
    elsif quotes == "\""
      double_quotes << quotes
    end
  end

  double_quotes.size.even? && single_quotes.size.even?
end


def balanced?(string)
  open_icon = []

  string.each_char do |icon|
    if PAIRS.key?(icon)
      open_icon << icon
    elsif PAIRS.values.include?(icon)
      return false if PAIRS.key(icon) != open_icon.pop
    end
  end
  open_icon.empty? && paired_quotes?(string) == true
end


# p balanced?('(dog)bat(cat)(monkey)(')
# p balanced?('{}{}{}')
# p balanced?('[][][]')
# p balanced?("''''''")
# p balanced?("\"\"\"\"")
p balanced?("({\"text\"})[]''")
p balanced?("({text})'")
