require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_input = params[:user_phrase]
    pl = PigLatinizer.new
    @result = pl.piglatinize(user_input)
    erb :result
  end
end
