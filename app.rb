require 'bundler'
Bundler.require()

get '/' do
	# "Holy crap I made an API"
	# "<html><head><link rel='icon' type='image/png' href='localhost:9292/favicon.ico'></head></html>"
	file = File.read('book.json')
	hash = JSON.parse(file)
	hash.to_json
end