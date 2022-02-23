class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_task, only: [:show, :edit, :destroy, :update]

  def index
    @tasks = current_user.tasks
  end

  def new
    @task = current_user.tasks.new
  end

  def create
    @task = current_user.tasks.create(task_params)
    if @task.save
      redirect_to [current_user, @task], notice: 'Task has successfully created.'
    else
      redirect_to new_user_task_path, alert: @task.errors.full_messages.to_sentence
    end
  end

  def show; end

  def edit; end

  def update
    if @task.update(task_params)
      redirect_to user_task_path(current_user, @task)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @task.destroy
      redirect_to user_tasks_path, notice: 'Note has been deleted succesfully.'
    else
      redirect_to user_tasks_path, alert: @task.errors.full_messages
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :started_at, :close_at)
    end

    def find_task
      @task = current_user.tasks.find(params[:id])
    end
  end
