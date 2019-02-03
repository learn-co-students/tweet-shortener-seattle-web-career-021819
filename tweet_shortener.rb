# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweets)
	tweets_to_array = tweets.split
	tweets_to_array.collect do |word|
		if dictionary.keys.include?(word.downcase)
			word = dictionary[word.downcase]
		else
			word
		end
	end.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
	array_of_tweets.each do |tweets|
		puts word_substituter(tweets)
	end
end

def selective_tweet_shortener(tweets)
	if tweets.length > 140
		word_substituter(tweets)
	else
		tweets
	end
	
end

def shortened_tweet_truncator(tweets)
	if tweets.length > 140
		if word_substituter(tweets).length > 140
			word_substituter(tweets)[0..136] + "..."
		else
			word_substituter(tweets)
			
		end
	else
		tweets
	end
	
end