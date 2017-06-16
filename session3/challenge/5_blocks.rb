# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(arr,&block)


order = []

  arr.shift.each {|x| order << x}
  arr.each {|x| order << x.pop}
  arr.pop.reverse.each {|x| order << x}
  arr.reverse.each {|x| order << x.shift}
  arr.shift.each {|x| order << x}
  arr.each {|x| order << x.pop}
  arr.pop.reverse.each {|x| order << x}
  arr.reverse.each {|x| order << x.shift}
  arr.shift.each {|x| order << x}

  return order

#  order(&block)

end

#two_d = [ [ 1,  2,  3,  4, 5],
#          [16, 17, 18, 19, 6],
#          [15, 24, 25, 20, 7],
#          [14, 23, 22, 21, 8],
#          [13, 12, 11, 10, 9],
#        ]

two_d = [[  1 ,  2 ,  3 ,  4 ,  5 ,  6 ],
[ 20 , 21 , 22 , 23 , 24 ,  7 ],
[ 19 , 32 , 33 , 34 , 25 ,  8 ],
[ 18 , 31 , 36 , 35 , 26 ,  9 ],
[ 17 , 30 , 29 , 28 , 27 , 10 ],
[ 16 , 15 , 14 , 13 , 12 , 11 ]]

#one_d = [[1,2,3,4,5]]

p spiral_access(two_d)

## had to check the solution... never in a million years.  My brain can't bend that way yet.
