def substrings(sentence, dict)
  result = Hash.new(0)
  sentence.split.each do |word|
    dict.reduce(result) do |acc, val|
      if word.upcase.include? val.upcase
        acc[val] += 1
      end
      acc
    end
  end
  result
end


# TESTS
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# p substrings("below", dictionary)
# p substrings("Howdy partner, sit down! How's it going?", dictionary)