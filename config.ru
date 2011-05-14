require 'bundler'
Bundler.require

require './post_hookie.rb'
run Sinatra::Application
