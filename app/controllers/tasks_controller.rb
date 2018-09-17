TASKS = [
  { task: "one", status:  "done"},
  {task: "two", status: "not done"},
  {task: "three", status: "done"}
]



class TasksController < ApplicationController

  def index
    @tasks = TASKS
  end

  def show
    task_id = params[:id].to_i
    @task = TASKS[task_id]
    if @task.nil?
      head :not_found
    end
  end
end
