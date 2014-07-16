class CommentsController < ApplicationController
  # before_action :authenticate_user!
  protect_from_forgery with: :null_session

  def index
  end

  def create
    @comment = Comment.new
    @comment.content = params[:comment]
    @comment.post_id = params[:post_id]
    @comment.user_id = params[:user_id]

    if @comment.save
      redirect_to '/posts/' + params[:post_id]
    else
      render :text, "Error"
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:comment_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:comment_id])
    @comment.content = params[:comment]

    if @comment.save
      redirect_to '/posts/' + params[:post_id]
    else

    end
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @post_id = @comment.post_id
    @comment.destroy

    redirect_to "/posts/#{@post_id}"
  end
end
