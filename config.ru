require 'sinatra/base'

require './controllers/application'
require './models/song.rb'

map('/') { run ApplicationController }
