class ConnectMailer < ApplicationMailer

  default from: 'contact@influencethis.com'

  def send_contact_email(first_name, last_name, email, message)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @message = message
    mail(to: "kirsten.frager@hotmail.com",
      subject: 'New message from website') do |format|
        format.html { render 'connect_mailer' }
        format.text { render 'connect_mailer' }
      end
  end
end
