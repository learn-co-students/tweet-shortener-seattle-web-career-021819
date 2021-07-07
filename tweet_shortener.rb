require 'pry'

def dictionary
  words = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
"be" => "b",
"you" => "u",
"at" => "@" ,
"and" => "&"
}
end

def word_substituter(tweet)
  new_array = []
  tweet_array = tweet.split(" ")
  new_var = dictionary.keys

tweet_array.each do |x|
if new_var.include?(x.downcase)
  new_array << dictionary[x.downcase]
else
  new_array << x
end
end
new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  new_tweet = []
  tweets.each do |tweet|
    new_tweet = word_substituter(tweet)
    puts new_tweet
end
end

def selective_tweet_shortener(tweet)
if tweet.length > 140
  word_substituter(tweet)
else
  return tweet
end
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet)
  if tweet.length > 140
    return tweet[0..136] + "..."
  else
    tweet
end
end
