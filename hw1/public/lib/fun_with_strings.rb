module FunWithStrings
  def palindrome?
    tst_str = self.gsub(/\W/, "")
    tst_str.downcase == tst_str.downcase.reverse
  end


  def count_words
    res = {} 
    self.downcase.gsub(/\W/, " ").split.each {|str|
      if res.has_key?(str)
        res[str] = res [str] + 1
      else
        res[str] = 1
      end
    }
    return res
  end

  def anagram_groups
    # http://stackoverflow.com/questions/9646995/ruby-way-to-group-anagrams-in-string-array
    self.split.group_by do |element|
      element.downcase.chars.sort
    end.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
