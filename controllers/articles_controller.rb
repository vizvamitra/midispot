class ArticlesController < ApplicationController
  get '/articles/?:tag?' do |tag|
    slim :articles
  end
end