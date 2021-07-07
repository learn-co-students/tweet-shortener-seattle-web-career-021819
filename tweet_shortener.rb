def dictionary 
  
  {"hello"=> "hi", "to"=> "2", "two"=> "2", "too"=> "2", "for"=> "4", "four"=> "4", "be"=>"b", "you"=> "u", "at"=> "@", "and"=> "&"}
end

def word_substituter (s)
  a=s.split(" ")
  d=dictionary
  b=a.map do |w|
    (d.keys.include?(w.downcase)) ? w=d[w.downcase] : w
  end
  
  b.join(" ")
end

def bulk_tweet_shortener (a)
  a.each { |s| puts word_substituter(s) }
end

def selective_tweet_shortener (s)
  s.length>140 ? word_substituter(s) : s
end

def shortened_tweet_truncator (s)
  if(s.length>140)
    s=s[0..139]
    s[137..139]="..."
    
    s
  else
    s
  end
end
    