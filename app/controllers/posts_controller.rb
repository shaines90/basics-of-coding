class PostsController < ApplicationController
  # before_action :authenticate_user!
  protect_from_forgery with: :null_session

  def index
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.user_id = params[:user_id]
    @post.tags << Tag.find(params[:tags])

    if @post.save
      render :show
    else
      render :text, "Error"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.where("post_id = ?", params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]

    if @post.save
      render :show
    else
      render :text, "Error"
    end
  end
end
