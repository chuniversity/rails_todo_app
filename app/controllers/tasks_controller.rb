class TasksController < ApplicationController

  def index
    # needs the file /app/views/tasks/index.html
    # this instance variable is accessible in `/app/views/tasks/index.html.erb`
    @tasks = Task.all
  end

end
