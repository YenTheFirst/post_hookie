DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.sqlite3")
class PostedData
	include DataMapper::Resource
	property :id, Serial
	property :created_at, DateTime, :required => true
	
	property :name, String, :required => true
	property :header, Text
	property :body, Text
end

DataMapper.finalize
DataMapper.auto_upgrade!



get '/' do
	"I should put an index here or something"
end

post '/hook/:name' do
	@post = PostedData.new(:name=>params[:name], :body=>request.body.read, :created_at=>DateTime.now)
	if @post.save
		["got it"]
	else
		[500,{},"some sort of error: #{@post.errors.inspect}"]
	end
end

get '/hook/:name' do
	@post = PostedData.first(:name=>params[:name], :order=>[:created_at.desc])
	@post ? haml(:show_hook) : [404]
end