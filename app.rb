require 'sinatra'
require 'json'
require 'require_all'
require_all 'app/services'

class App < Sinatra::Base 
  get '/' do
    { message: 'hello world!'}.to_json
  end
end