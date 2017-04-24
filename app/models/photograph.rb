class Photograph < ApplicationRecord
  belongs_to :influencer
  has_one :auction, :dependent => :destroy

  has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def has_auction?
    auction.present?
  end

  def slug_candidates
     [
       :title,
       [:title, :author]
     ]
   end
end
