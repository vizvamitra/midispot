require 'sinatra'
require 'coffee-script'
require 'rdiscount'
require 'mongo'
require 'slim'
require 'sass'
require 'json'

env = $1 if ARGV[0] =~ /^env=(\w+)$/
env = 'development' unless ['production'].include?(env)
SINATRA_ENV = env

require './controllers/application_controller'
Dir['controllers/*.rb'].each {|file| require './'+file}

require './db/database'
Dir['models/*.rb'].each {|file| require './'+file}