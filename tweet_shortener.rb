def dictionary
  {"hello" => "hi", 
   "to" => "2", "two" => "2", "too" => "2",
   "for" => "4", "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"}
end

def word_substituter(string)
  strArr = string.split(" ")
  newArr = []
  dicKeys = dictionary.keys
  for word in strArr
    if (dicKeys.include?(word.downcase))
      newArr << dictionary[word.downcase]
    else
      newArr << word
    end
  end
  newArr.join(" ").to_s
end

def bulk_tweet_shortener(arrayOfTweets)
	for string in arrayOfTweets
		puts word_substituter(string)
	end
end

def selective_tweet_shortener(arrayOfTweets)
	newArr = []
	for string in arrayOfTweets
		if string.length > 140
			newArr << word_substitute(string)
		elsif string.length < 130
			newArr << string
		end
	end
	newArr
end

def shortened_tweet_truncator(string)
	if string.length > 140
		return string[1..140] + "..."
	end
end

