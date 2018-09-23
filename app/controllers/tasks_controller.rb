
class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    task_id = params[:id].to_i
    @task = Task.find_by(id: task_id)
    if @task.nil?
      head :not_found
    end
  end

  def new
    @task = Task.new
  end


  def create
    filtered_task_params = task_params
    @task = Task.new(task_params)

    is_successful = @task.save

    if is_successful
      redirect_to tasks_path
    else
      render :new
    end
  end



  def edit
    @task = Task.find_by(id: (params[:id]))

  end

  def update
    @task = Task.find_by(id: (params[:id]))

    @task.update(task_params)

    is_successful = @task.save

    if is_successful
      redirect_to tasks_path
    else
      render :new
    end
  end


  def destroy
    task = Task.find_by(id: params[:id])
    task.destroy
    redirect_to tasks_path
  end

  def completed
    @task = Task.where(complete: false)
  end

  private

  def task_params
    return params.require(:task).permit(
      :action,
      :description,
      :completion_date
    )
  end
end
