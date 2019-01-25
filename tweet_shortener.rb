def dictionary
  { "hello" => 'hi', "to" => '2', "two" => '2', "too" => '2',
  "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&" }
end 

def word_substituter(tweet)
  tweet_words = tweet.split
  dictionary_hash = dictionary 
  dictionary_hash.each do |key, value|
    tweet_words.each do |word|
      if word.downcase == key 
        word.replace(value)
      end 
    end 
  end 
  tweet_words.join(' ')
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
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0...140]
  else 
    selective_tweet_shortener(tweet)
  end 
end 