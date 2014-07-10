class ContactsController < ApplicationController
  protect_from_forgery with: :null_session

  def new
  end

  def create
    @contact = Contact.new
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.message = params[:message]

    if @contact.save
      #send email
      UserMailer.contact_us_email(@contact).deliver
    else
      flash.now[:alert] = "There is an error"
    end
  end
end