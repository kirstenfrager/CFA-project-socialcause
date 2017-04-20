class ChargesController < ApplicationController
  def new
  end

  def create
    @photograph = Photograph.find(params[:id])
    @auction = @photograph.auction
    # Amount in cents
    @amount = (@photograph.auction.current_bid * 100).to_i
    @user = User.find(params[:id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Thank you for your generous contribution.',
      :currency    => 'aud',
      :receipt_email => @user.email
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def confirmation
    @photograph = Photograph.find(params[:id])
    @auction = @photograph.auction
  end
end
