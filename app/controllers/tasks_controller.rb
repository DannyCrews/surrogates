class TasksController < ApplicationController
  # before_action :set_task

  def index
    @surrogate = Surrogate.find(params[:surrogate_id])
    @tasks = @surrogate.tasks
  end

  # def show
  #   @task = Task.find(params[:id])
  # end

  # def new
  #   @task = @surrogate.tasks.new
  # end

  # def create
  #   @task = @surrogate.tasks.new(task_params)
  #   if @task.save
  #     redirect_to surrogate_tasks_path(@surrogate), notice: "Task 
  #     Created"
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @task = Task.find(params[:id])
  # end

  # def update
  #   @task = Task.find(params[:id])
  #   @task.update(task_params)
  #   redirect_to @task
  # end

  # def destroy
  #   @task = Task.find(params[:id])
  #   @task.destroy
  #   redirect_to tasks_url
  # end

  # private

  # def task_params
  #   params.require(:task).permit(:name, :description, :status)
  # end

  # def set_task
  #   @surrogate = Surrogate.find(params[:surrogate_id])
  # end

end
