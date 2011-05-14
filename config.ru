require 'bundler'
if ENV['RACK_ENV'] == 'production'
	Bundler.require(:default,:production)
else
	Bundler.require(:default)
end

require './post_hookie.rb'
run Sinatra::Application
