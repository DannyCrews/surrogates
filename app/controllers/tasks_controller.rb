class TasksController < ApplicationController
  before_action :set_task

  def index
    @tasks = @surrogate.tasks
  end

  def new
    @task = @surrogate.tasks.new
  end

  def create
    @task = @surrogate.tasks.new(task_params)
    if @task.save
      redirect_to surrogate_tasks_path(@surrogate), notice: "Task 
      Created"
    else
      render :new
    end
  end

  def destroy
    @task = @surrogate.tasks.find(params[:id])
    @task.destroy
    redirect_to surrogate_tasks_path(@surrogate), notice: "Task successfully deleted."
  end

private

  def task_params
    params.require(:task).permit(:name, :description, :status)
  end

  def set_task
    @surrogate = Surrogate.find(params[:surrogate_id])
  end

end
  

