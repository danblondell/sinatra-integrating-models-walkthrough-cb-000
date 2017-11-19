require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyed_text = TextAnalyzer.new(params[:text])

    erb :results
  end
end
