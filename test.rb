require 'sinatra'
require 'json'

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  File.open('file.txt', 'w') { |file| file.write(push.inspect) }
end