# write a method that returns true if there are matching sets of 
# either (),{},[],'' or ""

PAIRS = { '(' => ')', '{' => '}', '[' => ']', "'" => "'", "\"" => "\"" }


def balanced?(string)
  collection = []

    string.each_char do |opening|
      string.each_char do |closing|
        if PAIRS.key?(opening) && PAIRS.[opening][closing]
          collection << opening
          collection << closing
        end
      end
    end

  collection
end

p balanced?('()()()')
# p balanced?('{}{}{}')
# p balanced?('[][][]')
# p balanced?("''''''")
# p balanced?("\"\"\"\"")
# p balanced?(')(')
# p balanced?('}{')
# p balanced?('][')
# p balanced?("'")
# p balanced?("\"")
# p balanced?('(){}[]')
# p balanced?("\"\"'")