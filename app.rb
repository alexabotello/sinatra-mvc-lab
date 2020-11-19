require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    puts params
    @input = PigLatinizer.new(params["user_phrase"])
    erb :piglatinize
  end

  get '/piglatinize' do
    erb :piglatinize
  end

  post '/piglatinize' do
    puts params
    @input = PigLatinizer.new
    erb :piglatinize
  end
end