class ProfileController < ApplicationController
  protect_from_forgery with: :null_session

  def show
    @user = User.find(params[:id])

  end

end