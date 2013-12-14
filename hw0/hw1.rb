# Define a method hello(name) that takes a string representing a name
# and returns the string "Hello, " concatenated with the name.

def hello(name)
  "Hello, #{name}"
end

# test
#puts hello("saravana") == "Hello, saravana"
#puts hello("") == "Hello, "


# Define a method starts_with_consonant?(s) that takes a string and
# returns true if it starts with a consonant and false otherwise. (For
# our purposes, a consonant is any letter other than A, E, I, O, U.)
# NOTE: be sure it works for both upper and lower case and for
# nonletters!

def starts_with_consonant?(s)
  ( /^[^AEIOU]/ =~ s.capitalize )!= nil
end

#puts starts_with_consonant?("hai") == true
#puts starts_with_consonant?("aeiou") == false
#puts starts_with_consonant?("99") == true

#Define a method binary_multiple_of_4?(s) that takes a string and
#returns true if the string represents a binary number that is a
#multiple of 4. NOTE: be sure it returns false if the string is not a
#valid binary number!

def binary_multiple_of_4?(s)
  return false if /[^01]/ =~ s
  s.to_i(2) % 4 == 0
end

puts binary_multiple_of_4?("test") == false
puts binary_multiple_of_4?("00110") == false
puts binary_multiple_of_4?("00100") == true
puts binary_multiple_of_4?("001test") == false
puts binary_multiple_of_4?("test0011011") == false


