require 'sinatra'
require 'coffee-script'
require 'rdiscount'
require 'mongo'
require 'slim'
require 'sass'

require './controllers/application_controller'
Dir['controllers/*.rb'].each {|file| require './'+file}