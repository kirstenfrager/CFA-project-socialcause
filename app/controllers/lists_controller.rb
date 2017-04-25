class ListsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_influencer!

  def influencer_list
  end

  def photo_list
  end
end
