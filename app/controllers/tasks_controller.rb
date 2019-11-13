class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy]

  def index
    # needs the file /app/views/tasks/index.html
    # this instance variable is accessible in `/app/views/tasks/index.html.erb`
    @tasks = Task.all
  end

  def create
    task = Task.new(description: params[:description])
    if task.save
      redirect_to "/", notice: "Task successfully created"
    else
      redirect_to "/", alert: task.errors.full_messages.to_sentence.capitalize
    end
  end

  def update
    @task.update(completed: !@task.completed)
    redirect_to "/", notice: "Task successfully updated"
  end

  def destroy
    @task.destroy
    redirect_to "/", notice: "Task successfully destroyed"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

end
