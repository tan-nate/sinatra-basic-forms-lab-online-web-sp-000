require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    params.collect! do |key, value|
      key.to_sym
    end
    binding.pry
    @puppy = Puppy.new(params)
    erb :display_puppy
  end
end
