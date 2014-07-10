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
    else
      flash.now[:alert] = "There is an error"
    end
  end


end