# does the follow method mutate the original string or not?


def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

string = 'hello world'

p spin_me(string) 

p string