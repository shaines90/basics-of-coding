class ContributeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    post = Post.new
    post.title = params[:title]

    if post.save
      render :create
    else
      render :text, "Error"
    end
  end
end

