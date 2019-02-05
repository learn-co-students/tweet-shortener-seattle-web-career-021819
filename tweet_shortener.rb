require 'pry'
def dictionary
  { "hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => "4", 'be' => 'b',
'you' => 'u', "at" => "@", "and" => "&" }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  dictionary_array = dictionary.keys
  n = 0
  tweet_array.each do |n|
    == dictionary_array[n]
    n=+1
    binding.pry
  end
end
