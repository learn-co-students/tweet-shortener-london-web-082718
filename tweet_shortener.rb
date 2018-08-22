# Write your code here.

def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

# FUNCTION 1  - replaces long words with their expected short form

def word_substituter(tweet)
    tweet.split(" ").map do |word|      # 1
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]   # 2
      else
        word
    end
  end.join(" ")   # 3
end

# 1 - each word in tweet is split
# 2 - indexing to the dictionary key value so that word becomes the corresponding value
# 3 - joins up all the words  IMPLICITLY and replaced words back together to reform tweet

