class ApplicationController < Sinatra::Base

  require "bundler"
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :database => 'sinatra_songs',
    :adapter => 'postgresql'
  )

  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    @songs = Song.all
    erb :index
  end

  not_found do
    erb :lost
  end

end
