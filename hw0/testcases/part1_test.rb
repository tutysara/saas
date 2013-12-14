load 'part1.rb'

#sum of empty is 0
puts(sum([]) ==0)
#sum of 5 elements [1,5] 15
puts(sum([1,2,3,4,5])==15)

#max 2 sum for empty
puts(max_2_sum([])==0)

#max 2 sum for one element

puts(max_2_sum([1])==1)
#max 2 sum for more than one element
puts(max_2_sum([1,2,3,4])==7)


###sum to n
#empty array should equal 0
puts(sum_to_n?([], 0))
#should not have sum 5
puts(!sum_to_n?([1,1],5))

#array should have sum 2
puts(sum_to_n?([3,4,5,1,7,1],2))