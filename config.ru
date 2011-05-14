require 'bundler'
Bundler.require(:default)
require 'dm-postgres-adapter' if ENV['RACK_ENV'] == 'production'

require './post_hookie.rb'
run Sinatra::Application
