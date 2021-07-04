class UsersController < ApplicationController
  
  def after_sign_in_path_for(resource)
    tags_path(resource)
  end
  
  def show
    if user_signed_in? && current_user.id 
      @nickname = current_user.nickname
      @tags = current_user.tags
    else
      redirect_to root_path
    end
  end
end
