class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @tags = current_user.tags
  end
end
