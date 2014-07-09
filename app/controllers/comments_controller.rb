class CommentsController < ApplicationController
  # before_action :authenticate_user!
  protect_from_forgery with: :null_session

  def index
  end

  def create
    @comment = Comment.new
    @comment.content = params[:comment]
    @comment.post_id = params[:post_id]

    if @comment.save
      redirect_to '/posts/' + params[:post_id]
    else
      render :text, "Error"
    end
  end
end
