class ApplicationController < Sinatra::base

  require "bundler"
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql'
    :database => 'sinatra_songs'
  )

get '/' do
  :index
end

not_found do
  erb :lost
end

end
