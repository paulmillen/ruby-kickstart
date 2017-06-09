# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#def got_three?(x)
#  x.combination(3).any? {|a,b,c| a == b && b == c}
#end

def got_three?(x)
  count = 0
  previous = ""
  x.each do |i|
    if i == previous
      count +=1
      return true if count == 2
    else
      previous = i
      count = 0
    end
  end
  false
end
