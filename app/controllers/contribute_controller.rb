class ContributeController < ApplicationController
  before_action :authenticate_user!

  def index
    @tags = Tag.all
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]

    if post.save
      render :create
    else
      render :text, "Error"
    end
  end
end

