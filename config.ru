require 'bundler'
Bundler.require(:default, (ENV['RACK_ENV'] || "").to_sym)

require './post_hookie.rb'
run Sinatra::Application
