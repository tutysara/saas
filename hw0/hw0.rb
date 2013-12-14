# Define a method sum which takes an array of integers as an argument
# and returns the sum of its elements. For an empty array it should
# return zero.

def sum(in_array)
  return 0 if in_array.length == 0
  return in_array.reduce(:+)
end

# tests
print "sum([1,2,3]) == 6"
print sum([1,2,3]) == 6, "\n"
print "sum([]) == 0"
print sum([]) == 0, "\n"

# Define a method max_2_sum which takes an array of integers as an
# argument and returns the sum of its two largest elements. For an
# empty array it should return zero. For an array with just one
# element, it should return that element.

def max_2_sum(int_array)
  return 0 if int_array.length == 0
  return int_array[0] if int_array.length == 1
  int_array.sort!.reverse!
  return int_array[0] + int_array[1]  
end

# test
print "max_2_sum([]) == 0", max_2_sum([]) == 0; puts 
print "max_2_sum([1]) ==1", max_2_sum([1]) == 1; puts
print "max_2_sum([1,2]) == 3", max_2_sum([1,2]) == 3; puts
print "max_2_sum([1,2,3]) == 5", max_2_sum([1,2,3]) == 5; puts


# Define a method sum_to_n? which takes an array of integers and an
# additional integer, n, as arguments and returns true if any two
# elements in the array of integers sum to n. An empty array should
# sum to zero by definition.

def sum_to_n?(int_array, n)
  return true if int_array.length == 0 && n == 0
  int_array.each_with_index{ |val, index| 
      return true if int_array.find_index(n - val) && int_array.find_index(n - val ) != index
    }
  return false # default return false
end

# test
print "sum_to_n?([1,2,3], 5) == true" , sum_to_n?([1,2,3], 5) == true; puts
print "sum_to_n?([1,2], 5) == false" , sum_to_n?([1,2], 5) == false; puts
print "sum_to_n?([], 0) == true" , sum_to_n?([], 0) == true; puts
print "sum_to_n?([], 5) == false" , sum_to_n?([], 5) == false; puts


