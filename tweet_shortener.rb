require 'pry'
# Write your code here.
def dictionary
  hash = {'hello' => 'hi', 'to' => '2', 'two' => '2', 'too' => '2', 'for' => '4', 'four' => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}
end

def word_substituter(string)
  words_to_replace = dictionary.keys
  array1 = string.split(" ")

  array1.each do |element|
    if words_to_replace.include?(element)
      element.replace(dictionary.fetch(element))
    end
  end
  return array1.join(" ")
end

def dictionary
  hash = {'hello' => 'hi', 'to' => '2', 'two' => '2', 'too' => '2', 'for' => '4', 'four' => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}
end

def bulk_tweet_shortener(array)
  words_to_replace = dictionary.keys

  array.each do |tweet|
    array1 = tweet.split(" ")

   array1.each do |element|
      if words_to_replace.include?(element.downcase)
        element.replace(dictionary.fetch(element.downcase))
      end
    end
    puts array1.join(" ")
  end
end


def selective_tweet_shortener(array)
  words_to_replace = dictionary.keys

  array.each do |tweet|
    array1 = tweet.split(" ")
    if array1.size > 140
   array1.each do |element|
      if words_to_replace.include?(element.downcase)
        element.replace(dictionary.fetch(element.downcase))
      end
    end
  end
    puts array1.join(" ")
  end
end


def selective_tweet_shortener(string)
  if string.size > 140
    word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  if string.size > 140
    result = word_substituter(string)
    if result.size >= 140
      return result[1..137] + "..."
    else
      return result
    end
  else
    return string
  end
end
