# Takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string 
# and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(sentence, dictionary)
  hash = Hash.new(0)

  dictionary.each do |sub|
    sentence.split(' ').each do |word|
      if word.downcase.include?(sub)
        hash[sub] += 1
      end
    end
  end

  return hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)