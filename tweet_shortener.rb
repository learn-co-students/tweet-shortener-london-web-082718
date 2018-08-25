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

def word_substituter(tweet)
  tweet.split(" ").collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").collect do |phrase|
    if phrase.length >= 130
      word_substituter(phrase)
    elsif phrase.length <= 130
      phrase
    end
  end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").collect do |phrase|
    if phrase.length >= 130
      word_substituter(phrase)[0..130] + "..."
    else
      phrase
    end
  end.join(" ")
end
