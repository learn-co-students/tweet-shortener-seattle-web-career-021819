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

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  elsif string.length < 130
    string
  else
    string
  end
end

def shortened_tweet_truncator(string)
	if string.length > 140
		return string[0...137] + "..."
	else
		return string
	end
end


