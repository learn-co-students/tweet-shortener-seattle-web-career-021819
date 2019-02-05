# Write your code here.
def dictionary(word) 
  dict = {
    "hello" => "hi",
    "to"=> "2",
    "two"=> "2",
    "too"=> "2",
    "for"=> "4",
    "four"=> "4",
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }

  dict.keys.include?(word.downcase) ? dict[word.downcase] : word
  #binding.pry
end

def word_substituter(tweet)
  new_tweet = []
  tweet.split(' ').each do |word|
    new_tweet << dictionary(word)
  end

  new_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
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
  if (tweet.length > 140)
    tweet = tweet[0...137]
    tweet << "..."
  else
    tweet
  end
end