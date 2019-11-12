class TasksController < ApplicationController

  def index
    # needs the file /app/views/tasks/index.html
    # this instance variable is accessible in `/app/views/tasks/index.html.erb`
    @tasks = Task.all
  end

  def create
    Task.create(description: params[:description])
    redirect_to "/"
  end

  def destroy
    task = Task.find(params[:id]) 
    task.destroy
    redirect_to "/"
  end

end
