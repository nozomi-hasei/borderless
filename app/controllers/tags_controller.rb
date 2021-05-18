class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    Tag.create(tag_params)
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
  end

  private
  def tag_params
    params.require(:tag).permit(:text_tag, :text_memo)
  end
end
