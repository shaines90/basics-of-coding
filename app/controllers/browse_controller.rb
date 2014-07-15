class BrowseController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def show_tag
    tag_id = params[:id]
    @posts = Post.joins(:tags).where(posts_tags: {tag_id: tag_id})
    @tags = Tag.all

    render :index
  end

end