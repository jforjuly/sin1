require 'sinatra'
class Sinapp < Sinatra::Base
  get '/' do
    Time.now.to_s
  end
end