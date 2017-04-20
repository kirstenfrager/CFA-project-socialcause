class PagesController < ApplicationController

  def callback
    # binding.pry
    response = Instagram.get_access_token(params[:code], redirect_uri: ENV['REDIRECT_URI'])
    session[:access_token] = response.access_token
    flash[:notice] = "Successfully logged in with Instagram"
    redirect_to root_path
  end

#   def home
#     @instagram = Instagram.user_recent_media("745531022", {:count => 1})
# end

  def home
    @photographs = Photograph.all
  end
end
