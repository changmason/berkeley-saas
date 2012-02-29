# saas-class hw1 - part 3

def combine_anagrams(words)
  anagrams = {}
  words.each do |word|
    sorted = word.downcase.chars.sort.join
    if anagrams[sorted]
      anagrams[sorted] << word
    else
      anagrams[sorted] = [word]
    end
  end
  anagrams.values
end
