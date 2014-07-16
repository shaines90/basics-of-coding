class SearchController < ApplicationController

  def show
    @query = params[:title]
    @posts = Post.where("title like ?", '%' + @query + '%')
  end

end