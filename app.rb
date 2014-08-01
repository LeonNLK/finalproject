require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/twilio2.rb'
require './lib/finalproject.rb'


get '/' do
  @tweet = Tweet.new
  erb :index
end