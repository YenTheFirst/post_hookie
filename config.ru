require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

require './post_hookie.rb'
run Sinatra::Application
