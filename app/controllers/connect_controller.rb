class ConnectController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_influencer!
  
  def index
  end

  def mail
    if params[:connect]
      first_name = params[:connect][:first_name]
      last_name = params[:connect][:last_name]
      email =  params[:connect][:email]
      message = params[:connect][:message]

      if email.present? || message.present?
        # Tell the UserMailer to send a welcome email after save
        ConnectMailer.send_contact_email(first_name, last_name, email, message).deliver_now
        redirect_to '/connect', notice: 'Email sent. Thank you!'
      else
        flash[:warning] = "Please fill out the form"
        redirect_to '/connect'
      end
    end
  end
end
