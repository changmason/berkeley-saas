# saas-class hw1 - part 1

# (a)
def palindrome?(string)
  str = string.gsub(/\W+/, "").downcase
  str == str.reverse
end

# (b)
def count_words(string)
  result = {}
  string.downcase.scan(/\b\w+\b/) do |word|
    result[word] ? result[word] += 1 : result[word] = 1
  end
  result
end
