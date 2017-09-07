require 'sinatra'
require 'sinatra/reloader'
require 'alexa_rubykit'
require 'json'

before do
  content_type('application/json')
end

get '/' do
  response = AlexaRubykit::Response.new
  response.add_speech('Ruby is running ready!')
  puts response.build_response
  response.build_response
end


