class TasksController < ApplicationController

  # READ
  def index
    @tasks = Task.all # Task and not tasks because it's the model
  end

  def show
    @task = Task.find(params[:id])
  end

  # CREATE
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
