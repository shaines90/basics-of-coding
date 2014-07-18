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
    tags = params[:tags]
    tags.each do |t|
      @post.tags << Tag.find(t)
    end

    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      redirect_to "/browse"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.where("post_id = ?", params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @tags = Tag.all
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.tags.clear
    tags = params[:tags]
    tags.each do |t|
      @post.tags << Tag.find(t)
    end

    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/browse"
  end

end
