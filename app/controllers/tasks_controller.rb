class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def add
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new # This will re-render the form if saving fails
    end

  def edit
  end

  end

  private

  def task_params
    params.require(:task).permit(:task, :details, :completed)
  end
end
