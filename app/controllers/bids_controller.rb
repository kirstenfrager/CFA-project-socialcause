require "place_bid"

class BidsController < ApplicationController

  def create
    service = PlaceBid.new(bid_params)
    if service.execute
      redirect_to :back, notice: 'Bid successfully placed.'
    else
      redirect_to :back, notice: 'Error: Please try again.'
    end
  end

  private

  def bid_params
    params.required(:bid).permit(:value).merge!(
    user_id: current_user.id,
    auction_id: params[:auction_id]
    )
  end

end


# if service.execute
#   redirect_to :photograph_path(params[:photograph_id], notice: 'Bid successfully placed.'
# else
#   redirect_to photograph_path(params[:photograph_id], alert: 'Error: Please try again.')
# end
