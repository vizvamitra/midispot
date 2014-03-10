require './config'

class SassEngine < Sinatra::Base
  set :views, File.dirname(__FILE__)+'/views/assets/stylesheets'
  
  get '/stylesheets/*.css' do
    filename = params[:splat].first
    sass filename.to_sym
  end
end

class CoffeeEngine < Sinatra::Base
  set :views, File.dirname(__FILE__)+'/views/assets/coffeescript'
  
  get "/javascript/*.js" do
    filename = params[:splat].first
    coffee filename.to_sym
  end
end

class App < Sinatra::Base
  use CoffeeEngine
  use SassEngine

  # connecting controllers
  Dir['controllers/*.rb'].each do |file|
    controller_name = file.gsub(/controllers\/|.rb/, '')
    controller_name = controller_name.split('_').map{|c| c.capitalize}.join
    eval("use #{controller_name}")
  end

  Slim::Engine.default_options[:pretty] = true
end

# RDiscount.new("#HELLO!\nHow are you?\n-\n\tfine,thanks!\n>a lot!").to_html