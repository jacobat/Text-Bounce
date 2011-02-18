require 'lib/message'

class MyApp < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/public'
  get '/' do
    @messages = Message.default_view
    erb :index
  end
  get '/messages.json' do
    Message.default_view.to_json
  end
  post '/messages' do
    Message.create(:message => params[:message])
  end
end