class IndexController < ApplicationController
  get '/' do
    slim :index
  end
end