class TasksController < ApplicationController
  def index
    @tasks = Task.all # Task and not tasks because it's the model
  end
end
