require_relative 'config/environment'

class App < Sinatra::Base
  get('/'){erb :user_input}

  post '/piglatinize' do
    input = params[:user_phrase]
    words = PigLatinizer.new
    @pig_result = words.piglatinize(input)
    erb :results
  end
end
