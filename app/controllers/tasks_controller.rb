class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = current_user.tasks.new
  end

  def create
    @task = current_user.tasks.create(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to [current_user, @task], notice: "Task has successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy
    redirect_to user_tasks_path
  end

  private
    def task_params
      params.require(:task).permit(:title, :discription, :started_at, :close_at)
    end
  end
