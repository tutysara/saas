load 'part2.rb'

#check hello string
puts(hello('Tom')=='Hello, Tom')


#should work for consonant

puts(starts_with_consonant?('Tom'))

#should work for consonant
puts(starts_with_consonant?('tom'))

#should not work for vowels
puts(!starts_with_consonant?('om'))

#should not work for vowels
puts(!starts_with_consonant?('Ann'))

#should work for empty string
puts(!starts_with_consonant?(''))


#should work for non letters
puts(!starts_with_consonant?('#foo'))

#should be binary
puts(!binary_multiple_of_4?('12'))

#should be binary
puts(!binary_multiple_of_4?('01300'))

#4 is multiple of 4
puts(binary_multiple_of_4?('100'))

#8 is multiple of 4
puts(binary_multiple_of_4?('1100'))

#5 is multiple of 4
puts(!binary_multiple_of_4?('101'))

#0 is multiple of 4
puts(binary_multiple_of_4?('000'))

#0 is multiple of 4
puts(binary_multiple_of_4?('0'))