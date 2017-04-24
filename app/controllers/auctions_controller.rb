class AuctionsController < ApplicationController

  def create
    @photograph = Photograph.friendly.find(params[:photograph_id])
    @auction = Auction.new(auction_params)
    @auction.photograph_id = params[:photograph_id]
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

end
