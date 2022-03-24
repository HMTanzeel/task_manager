class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_project, except: [:index, :new, :create]

  def index
    @projects = current_user.projects
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.create(project_params)
    if @project.save
      redirect_to user_project_path(current_user, @project), notice: 'Project has successfully created.'
    else
      redirect_to new_user_project_path, alert: @project.errors.full_messages.to_sentence
    end
  end

  def show; end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to user_project_path(current_user, @project)
    else
      redirect_to edit_user_project_path, alert: @project.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @project.destroy
      redirect_to user_projects_path, notice: 'Project has been deleted succesfully.'
    else
      redirect_to user_projects_path, alert: @project.errors.full_messages
    end
  end

  private
    def project_params
      params.require(:project).permit(:title, :description, :started_at, :close_at, :active, :project_type)
    end

    def find_project
      @project = current_user.projects.find(params[:id])
    end
end
