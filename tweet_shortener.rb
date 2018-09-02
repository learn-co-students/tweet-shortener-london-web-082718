# Write your code here.

require 'pry'


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

# 1 - each word in tweet string is split and forms an array element to iterate over
  #  - each element is called 'word'
# 2 - indexing to the dictionary key value so that word becomes the corresponding value
# 3 - joins up all the words  IMPLICITLY and replaced words back together to reform tweet


# FUNCTION 2  - akes in an array of tweets, iterates over them, shortens them, and puts out the results to the screen.

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
    # each element in tweet_array is the tweet string which
    # the  word_substituter method can work on
  end
end

# FUNCTION 3

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |phrase|      # 1
    if tweet.length > 140
      word_substituter(phrase)
    elsif tweet.length <= 130
      return tweet
    else
      return tweet
    end
  end
end

# FUNCTION 4

def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |phrase|        # 1
    if tweet.length > 140
      word_substituter(phrase)
    else
      return tweet
    end
  end.join(" ")[0..136] + "..."
end

=begin
def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |phrase|      # 1
    if phrase.length > 140
      word_substituter(phrase)[0..140] + "..."
    else
      phrase
    end
  end.join(" ")   # 2
end
=end
# 1 - need to convert tweet and break down into words
# 2 - joins up all the words  IMPLICITLY and replaced words back together to reform tweet
