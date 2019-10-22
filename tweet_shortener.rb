# Write your code here.
def dictionary
  dictionary = {
    'hello' => 'hi',
    'too' => '2',
    'to' => '2',
    'two' => '2',
    'four' => '4',
    'for' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ")
  new_tweet.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end
    
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length >140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..136] + '...': tweet
end