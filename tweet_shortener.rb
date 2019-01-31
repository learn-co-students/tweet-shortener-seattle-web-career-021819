# Write your code here.


def dictionary
  dictionary = {
    "hello" => 'hi',
  "to" => "2",
  "two"=> "2",
  "too" => '2',
  "For" => '4',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }
end


def word_substituter(string)
  string_arr = []
  string_arr = string.split

  string_arr.map! do |w|
    if dictionary.include?(w) == true
      w = dictionary[w]
    else
      w
    end
  end
  string_arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |s|
    puts word_substituter(s)
  end
end

def selective_tweet_shortener(s)
      if s.chars.length < 140
         s
      else
         word_substituter(s)
      end
    end

def shortened_tweet_truncator(s)
      if s.length > 140
         word_substituter(s[0..145]) + "..."
      else
         word_substituter(s)
      end
  end
