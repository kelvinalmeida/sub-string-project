
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def find_substrings(array_of_words, dictionary)
  array_of_words = array_of_words.split(" ")
  array_of_substrings = Array.new

  array_of_words.each do |word|
    array_of_substrings.push(dictionary.select {|substring| word.include? substring})
  end

  array_of_substrings.flatten
end


def hash_of_substrings(array_of_substrings)
  hash_of_substring = array_of_substrings.reduce(Hash.new(0)) do|acc, substring|
    acc[substring] += 1
    acc
  end

  hash_of_substring
end


def substrings(str, dictionary)

  array_of_substrings = find_substrings(str, dictionary)

  substrings_hash = hash_of_substrings(array_of_substrings)


  return substrings_hash
end


p substrings("below", dictionary)
