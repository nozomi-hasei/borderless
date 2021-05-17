class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
  end

  private
  def tag_params
    params.require(:tag).permit(:text_tag, :text_memo)
  end
end
