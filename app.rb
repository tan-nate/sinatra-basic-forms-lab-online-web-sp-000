require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    binding.pry
    params = params.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
    @puppy = Puppy.new(params)
    erb :display_puppy
  end
end
