class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index         # GET /tasks
    @tasks = Task.all
  end

  def show          # GET /tasks/:id
    # params[:id]
  end

  # Display the form
  def new           # GET /tasks/new
    @task = Task.new
  end

  # Process the form
  def create        # POST /tasks
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit          # GET /tasks/:id/edit
  end

  def update        # PATCH /tasks/:id
    @task.update(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def destroy       # DELETE /tasks/:id
    @task.destroy

    redirect_to tasks_path
  end

  private

  # Strong params for security reasons
  def task_params
    params.require(:task).permit(:name, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
