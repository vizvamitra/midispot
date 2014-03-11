class ApplicationController < Sinatra::Base
  set :views,   File.expand_path('../../views', __FILE__)

  before do
    @mobile = false
    @mobile = true if request.user_agent =~ /Android|iPad|iPhone|SimbOS|BlackBerry|J2ME\/MIDP/
  end
end