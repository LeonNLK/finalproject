require 'nokogiri'
require 'open-uri'
require 'rubygems'
require 'twilio-ruby'

class Tweet

  def initialize
    tweets = open("https://twitter.com/realtimewwi") 
    @tweetsdoc = Nokogiri::HTML(tweets)
  end


  def latest_tweet
    @tweetsdoc2 = @tweetsdoc.css(".ProfileTweet-text.js-tweet-text.u-dir").first.text
  end

  def time_of_tweet
    time = open("https://twitter.com/realtimewwi")
    @time_of_tweet = Nokogiri::HTML(time)
    @time_of_tweet.css(".js-short-timestamp js-relative-timestamp")
  end
end