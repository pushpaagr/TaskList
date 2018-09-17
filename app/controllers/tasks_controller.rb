TASKS = [
  { task: "one", status:  "done"},
  {task: "two", status: "not done"},
  {task: "three", status: "done"}
]



class TasksController < ApplicationController

  def index
    @tasks = TASKS
  end
end
