class Auction < ApplicationRecord
  belongs_to :photograph
  has_many :bids, :dependent => :destroy


  def top_bid
    bids.order(value: :desc).first
  end

  def current_bid
    top_bid.nil? ? value: top_bid.value
  end

  def ended?
    ends_at < Time.now
  end
end
