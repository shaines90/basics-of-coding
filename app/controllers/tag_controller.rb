class TagController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    tags = Tags.new
    tags.name = params[:title]

    if tags.save
      render :create
    else
      render :text, "Error"
    end
  end

  def create
    tags = Tags.new
    tags.color = params[:rgb]

    if tags.save
      render :create
    else
      render :text, "Error"
    end
  end

end