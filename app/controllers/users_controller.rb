class UsersController < ApplicationController
  def show
    if user_signed_in? && current_user.id 
      @nickname = current_user.nickname
      @tags = current_user.tags
    else
      redirect_to root_path
    end
  end
end
