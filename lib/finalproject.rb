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
   @tweet_time = Time.at(@tweetsdoc.css(".js-short-timestamp").first.attributes["data-time"].value.to_i)
  end
end