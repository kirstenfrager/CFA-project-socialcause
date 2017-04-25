class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_influencer!
  before_filter :authorize_admin, :admin_dashboard, :list_influencer

  # only: [:home, :charity, :about, :admin_dashboard]
  # only: [:home, :charity, :about, :admin_dashboard]

  # def callback
  #   # binding.pry
  #   response = Instagram.get_access_token(params[:code], redirect_uri: ENV['REDIRECT_URI'])
  #   session[:access_token] = response.access_token
  #   flash[:notice] = "Successfully logged in with Instagram"
  #   redirect_to root_path
  # end

#   def home
#     @instagram = Instagram.user_recent_media("745531022", {:count => 1})
# end

  def home
    @photographs = Photograph.all
  end

  def admin_dashboard

  end

  def list_influencer
    @influencers = Influencer.paginate(page: params[:page], per_page: 4).order(created_at: :desc)
    @i_paginator = @influencers.group_by { |r| r.created_at.to_date }
  end

  def list_user
    @users = User.paginate(page: params[:page], per_page: 4).order(created_at: :desc)
    @u_paginator = @users.group_by { |r| r.created_at.to_date }
  end

  def list_photo
    @photographs = Photograph.paginate(page: params[:page], per_page: 4).order(created_at: :desc)
    # @p_paginator = @photographs.group_by { |r| r.created_at.to_date }
  end
end
