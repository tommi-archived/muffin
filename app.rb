require_relative File.join('config', 'shared.rb')

require 'sinatra/base'

require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

require_relative 'routes/init'
require_relative 'helpers/helpers'

class Muffin < Sinatra::Base
  configure :production, :development, :test do
    enable :logging
  end
end
