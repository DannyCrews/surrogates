class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    task_params = params.require(:task).permit(:name, :description, :status)
    @task.update(task_params)
    redirect_to @task
  end
end
