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
    params.collect do |key, value|
      key.to_sym value
    end
    @puppy = Puppy.new(params)
    erb :display_puppy
  end
end
