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

  
  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
    unless current_user = @project.user
      redirect_to root_path
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:main_title, :start_date, :finish_date, :department, :category, :project_memo, :image).merge(user_id: current_user.id)
  end
end
