# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_return = ""
  string.length.times do |i|
    to_return << string[i+1] if string[i+1] != nil && (string[i] == "r" || string[i] == "R")
  end
  to_return
end
