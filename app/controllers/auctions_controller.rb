class AuctionsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_influencer!

  def create
    @photograph = Photograph.friendly.find(params[:photograph_id])
    @auction = Auction.new(auction_params)
    @auction.photograph_id = @photograph.id
  #  @auction.ends_at = Time.now + 7.days

    if @auction.save
      redirect_to @photograph, notice: "Item put to Auction."
    else
      redirect_to @photograph, notice: "Error, please review your input."
    end
  end

  def auction_params
    params.require(:auction).permit(:value, :ends_at)
  end

  def update_time
    @end_now = Photograph.friendly.find(params[:photograph_id]).update_attribute(:ends_at, Time.now)
  end

    # Photograph.friendly.find("blue-haven").update_attribute(:ends_at, Time.now)
    # Photograph.friendly.find(params[:photograph_id]).update_attribute(:ends_at, Time.now)
    # Auction.friendly.find(16).update_attribute(:ends_at, Time.now)
end
