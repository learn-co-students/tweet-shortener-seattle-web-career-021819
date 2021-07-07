def dictionary
  hash = {"hello" => "hi", 
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
  new_tweet = []
  tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet << word = dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else 
    tweet 
  end 
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length >140
    tweet[0..139]
  else
    tweet
  end
end