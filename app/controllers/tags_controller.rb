class TagsController < ApplicationController
  before_action :find_params, only: [:edit, :show]

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

  def edit
  end

  def update
    tag = Tag.find(params[:id])
    tag.update(tag_params)
  end

  def show
  end

  private
  def tag_params
    params.require(:tag).permit(:text_tag, :text_memo)
  end

  def find_params
    @tag = Tag.find(params[:id])
  end
end
