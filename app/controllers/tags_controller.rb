class TagsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_params, only: [:edit, :show]

  def index
    @tags = Tag.includes(:user).order("created_at DESC")
    @projects = Project.includes(:user).order("created_at DESC")
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

  def search
    @tags = Tag.search(params[:keyword])
  end

  private
  def tag_params
    params.require(:tag).permit(:text_tag, :text_memo).merge(user_id: current_user.id)
  end

  def find_params
    @tag = Tag.find(params[:id])
  end
end
