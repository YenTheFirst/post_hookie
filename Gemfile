source :rubygems
gem 'sinatra'
gem 'data_mapper'
gem 'haml'

group :development, :test do
	gem 'dm-sqlite-adapter'   #for localhost
end

group :production do
	gem 'dm-postgres-adapter' #for heroku
end

#some bugs fixing
gem 'dm-do-adapter', ">=1.1.1", :git=>"https://github.com/datamapper/dm-do-adapter.git"
gem 'dm-core', :git=>"https://github.com/datamapper/dm-core.git"
