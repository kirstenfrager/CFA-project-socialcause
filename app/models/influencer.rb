class Influencer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :photographs

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |influencer|
      influencer.email = auth.info.email
      influencer.password = Devise.friendly_token[0,20]
      influencer.first_name = auth.info.first_name
      influencer.last_name = auth.info.last_name
      # influencer.first_name = auth.info.name   # assuming the influencer model has a name
      # influencer.image = auth.info.image # assuming the influencer model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # influencer.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |influencer|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        influencer.email = data["email"] if influencer.email.blank?
      end
    end
  end
end
