class IndexController < ApplicationController
  get '/' do
    @sites = Site.all()
    slim :index
  end
end