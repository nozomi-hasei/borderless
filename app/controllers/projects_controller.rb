class ProjectsController < ApplicationController
  def index
    @projects = Project.includes(:user).order("created_at DESC")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:main_title, :start_date, :finish_date, :department, :category, :project_memo, :image).merge(user_id: current_user.id)
  end
end
