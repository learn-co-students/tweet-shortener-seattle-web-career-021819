# Write your code here.
def dictionary
  words_and_substitutes = {
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
tweet_array = tweet.split(" ")
new_array = []
tweet_array.each do |word|
  if dictionary.keys.include?(word.downcase)
   new_array << dictionary[word.downcase]
 else
  new_array << word
end
end
    new_array.join(" ")
end


def bulk_tweet_shortener(tweet_array)
tweet_array.each do |tweets|
    puts word_substituter(tweets)
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
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
end
end
