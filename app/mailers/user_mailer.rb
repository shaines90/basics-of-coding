class UserMailer < ActionMailer::Base
  default from: "info@whiteboard.com.hk"

  def contact_us_email(contact)
    @contact = contact
    mail(to:'sophia.haines@hotmail.com', subject:'New Message')
  end
end
