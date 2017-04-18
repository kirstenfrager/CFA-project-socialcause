class AuctionsController < ApplicationController

  def create
    @photograph = Photograph.find(params[:photograph_id])
    @auction = Auction.new(auction_params)
    @auction.photograph_id = params[:photograph_id]

    if @auction.save
      redirect_to @photograph, notice: "Item put to Auction."
    else
      redirect_to @photograph, notice: "Error, please review your input."
    end
  end

  def auction_params
    params.require(:auction).permit(:value)
  end

end
