class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_task, only: [:show, :edit, :destroy, :update, :list]

  def index
    @projects = current_user.projects
  end

  def new
    @projects = current_user.projects.new
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def list
    
  end

  def destroy
    
  end

  private
    def project_params
      params.require(:projects).permit(:title, :description, :active)
    end

    def find_project
      @project = current_user.projects.find(params[:id])
    end
end
