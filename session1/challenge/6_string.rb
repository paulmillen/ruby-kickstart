# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  if return_odds == true
    answer = []
    string.split("").each_with_index {|x,i| answer.push(x) if i % 2 != 0}
    return answer.join
  else
    answer = []
    string.split("").each_with_index {|x,i| answer.push(x) if i % 2 == 0}
    return answer.join
  end
end

# p odds_and_evens('abcdefg', true)
