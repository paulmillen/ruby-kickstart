# Given a non-negative integer, return a hash whose keys are all the odd non-negative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)

  answer = {}

  0.upto(n) do |max|
    next if max.even?
    array = Array.new(max) {|i| i }
    answer[max] = array.delete_if {|i| i == 0 || i.odd?}
  end
  answer
end
