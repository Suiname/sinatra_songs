require 'sinatra/base'
require './controllers/application'
require './models/song'

map('/') { run ApplicationController }
