require 'sinatra'
get '/' do
  "Hello World "
end
get '/hello2' do
  "Hello World #{ENV['CF_INSTANCE_ADDR']} "
end
get '/kill' do
  Process.kill 'TERM', Process.pid
end
