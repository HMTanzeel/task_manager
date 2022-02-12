class TasksController < ApplicationController
  def create
    @task = current_user.tasks.create(task_params)
    redirect_to root_path
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private
    def task_params
      params.require(:task).permit(:title, :discription, :started_at, :close_at)
    end
  end
